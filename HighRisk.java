package com.te.prj;

public class HighRisk extends risk{
	
	public Store[] getData()
	{
		System.out.println("Getting Data for High risk...");
		DownloadSmallCap d1=new DownloadSmallCap();
		System.out.println(d1.cnt);
		Store array=null;
		Store arr[]=new Store[20];
		int j=0;
		for(int i=d1.cnt-1;i>(d1.cnt-13);i--)
		{
			array=new Store("MidCap", d1.array[i].getName(),d1.array[i].getAdjustedClose());
			arr[j]=array;
			j++;
		}
		DownloadMidCap d2=new DownloadMidCap();
		for(int i=d2.cnt-1;i>(d2.cnt-7);i--)
		{
			array=new Store("MidCap", d2.array[i].getName(),d2.array[i].getAdjustedClose());
			arr[j]=array;
			j++;
		}
		
		DownloadLargeCap d3=new DownloadLargeCap();
		for(int i=d3.cnt-1;i>(d3.cnt-3);i--)
		{
			array=new Store("MidCap", d3.array[i].getName(),d3.array[i].getAdjustedClose());
			arr[j]=array;
			j++;
		}
		 return arr;
		
	}

}
