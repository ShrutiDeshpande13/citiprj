package com.te.prj;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;

import com.google.gson.Gson;

/**
 * Servlet implementation class Factory
 */
@WebServlet("/Factory")
public class Factory extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public risk getInstance(String risk1) {
		risk r = null;
		switch (risk1) {
		case "Mid":
			r = new MidRisk();
			break;
		case "Low":
			r = new LowRisk();
			break;
		case "High":
			r = new HighRisk();

		}
		return r;
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String user = (String) session.getAttribute("user");
		String risk = null, low = null, mid = null;
		PrintWriter out = response.getWriter();
		Store array[]=new Store[20];
		if (request.getParameter("High") != null) {
			if (request.getParameter("High").equals("High")) {
				/*
				 * Factory f = new Factory(); risk r = f.getInstance("High");
				 * r.getData();
				 */
				HighRisk h = new HighRisk();
				array = h.getData();
			}
		}
		if (request.getParameter("Mid") != null) {
			if (request.getParameter("Mid").equals("Mid")) {
				/*
				 * Factory f = new Factory(); risk r = f.getInstance("Mid");
				 * r.getData();
				 */
				MidRisk m = new MidRisk();
				array = m.getData();

			}
		}
		if (request.getParameter("Low") != null) {
			if (request.getParameter("Low").equals("Low")) {
				/*
				 * Factory f = new Factory(); risk r = f.getInstance("Low");
				 * r.getData();
				 */

				LowRisk l = new LowRisk();
				array = l.getData();

			}
		}
		
		/*
		 * out.println("</table>"); out.println("</body>"); out.print("<html>");
		 */
		request.setAttribute("Array11", array);
		session.setAttribute("Array11", array);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/GetRisk.jsp");
		dispatcher.forward(request, response);
		
		// request.setAttribute("Array",gson.toJson(h.getData()));

	}

}
