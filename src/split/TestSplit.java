package split;

public class TestSplit {

	
	
	public static void main(String[] args) {
		
		
		
		String s = "����Ư���� ���빮�� �ż��� 89-79|1503ȣ";
		
		s = s.replace("|", " ");
		String temp[] = s.split(" ");
		
		for(int i = 0 ; i < temp.length ; i++){
			System.out.println(temp[i]);
		}
		
	}
}
