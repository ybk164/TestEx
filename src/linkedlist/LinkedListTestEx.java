package linkedlist;

import java.util.LinkedList;

public class LinkedListTestEx {
	
		public static void main(String[] args) {
			
			
			LinkedList<String> s = new LinkedList<String>();
			
			String s1 = "1";
			String s2 = "2";
			String s3 = "3";
			String s4 = "4";
			
//			s.add(s1);
//			s.add(s2);
//			s.add(s3);
//			s.add(s4);
			
			
			s.add(s3);
			s.add(s4);
			s.addLast(s1);			
			s.addFirst(s2);
			
			System.out.println("s = " + s);
			
			
		}
		
		
		
}
