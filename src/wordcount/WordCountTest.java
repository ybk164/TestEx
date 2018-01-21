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
		
		
		sb.append(" �츮 �籹�� ������ ������ �÷� �ӿ��� ���հ� ������ �������� ��������. ��õ ����������� ������ ������ �̸������ �ѡ��� �庴���� �Բ� �ο���, �Բ� �׾���. " );
		sb.append(" [��ó: �߾��Ϻ�] �� �������� �������� ���� ������Ʈ���� ��ȸ ������ ������ ���� �ڵ�                                                                 " );
		
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
