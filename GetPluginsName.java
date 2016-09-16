package com.tangwan;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class GetPluginsName {
	public static void main(String[] args) {
		StringBuffer txtContent = new StringBuffer();
		byte[] b = new byte[8 * 1024];
		InputStream in = null;
		try {
			in = new FileInputStream("c:/index.html");
			while (in.read(b) != -1) {
				txtContent.append(new String(b));
			}
			in.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (in != null) {
				try {
					in.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		String str = txtContent.toString();
		Pattern p = Pattern.compile("<a[^>]*>([^<]*)</a>");
		Matcher m = p.matcher(str);
		while (m.find()) {
			System.out.println(m.group(1));
		}
	}
}
