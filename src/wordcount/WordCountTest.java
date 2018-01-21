package wordcount;

import java.util.ArrayList;
import java.util.HashMap;

import org.bitbucket.eunjeon.seunjeon.Analyzer;
import org.bitbucket.eunjeon.seunjeon.LNode;

public class WordCountTest {
	
	
	public static void main(String[] args) {
		
		
		StringBuffer sb = new StringBuffer();
		
		
		ArrayList<HashMap<String,String>> arrayList = new ArrayList<HashMap<String,String>>();
		HashMap<String, String> map = null;
		
		
		sb.append(" 우리 양국의 동맹은 전쟁의 시련 속에서 싹텄고 역사의 실험으로 강해졌다. 인천 상륙작전에서 폭찹힐 전투에 이르기까지 한·미 장병들은 함께 싸웠고, 함께 죽었다. " );
		sb.append(" [출처: 중앙일보] 왜 ‘폭찹힐 전투’를 예로 들었을까…트럼프 국회 연설에 숨겨진 역사 코드                                                                 " );
		
		 for (LNode node : Analyzer.parseJava(sb.toString())) {
			 // System.out.println(node);
	           
	           System.out.println("node.morpheme().surface() = " + node.morpheme().surface() );
	           System.out.println("" + node.morpheme().feature().head());
	           map = new HashMap<String,String>();
	           map.put(node.morpheme().feature().head() , node.morpheme().surface());
	           
	           
//	           System.out.println(" productPrefix() = " + node.productPrefix().toString());
//	           System.out.println("node.morpheme().key() = " + node.morpheme().key());
//	           System.out.println("node.morpheme().surface() = " + node.morpheme().surface() );
//	           System.out.println("node.productIterator() = " + node.productIterator() );	          
//	           System.out.println("node.morpheme().feature().stringPrefix() = " + node.morpheme().feature().stringPrefix() );	           
//	           System.out.println("node.morpheme().feature().mkString() = " + node.morpheme().feature().mkString());
//	           System.out.println("node.leftNode().morpheme().feature().array() = " + node.leftNode().morpheme().feature().array());

	           arrayList.add(map);
	           
	           map = null;
		 }
//		 	for(HashMap<String,String> m: arrayList){
//		 		System.out.println("map = " + m);
//		 	}
		 
	}
}
