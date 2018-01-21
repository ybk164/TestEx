package split;

public class TestSplit {

	
	
	public static void main(String[] args) {
		
		
		
		String s = "서울특별시 동대문구 신설동 89-79|1503호";
		
		s = s.replace("|", " ");
		String temp[] = s.split(" ");
		
		for(int i = 0 ; i < temp.length ; i++){
			System.out.println(temp[i]);
		}
		
	}
}
