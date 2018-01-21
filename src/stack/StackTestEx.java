package stack;

import java.util.Stack;

public class StackTestEx {
	
	
	public static void main(String[] args) {
		
	
		Stack<String> s = new Stack<String>();
		
		String s1 = "1";
		String s2 = "2";
		String s3 = "3";
		String s4 = "4";
		
		s.push(s1);
		s.push(s2);
		s.push(s3);
		s.push(s4);
		
		
		while(!s.isEmpty()){
			System.out.println(" value  = " + s.pop());
		}
	
		
	}
	
	
	
	
}
