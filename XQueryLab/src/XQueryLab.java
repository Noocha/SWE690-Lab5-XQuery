import net.sf.saxon.xqj.SaxonXQDataSource;

import javax.xml.xquery.*;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

public class XQueryLab {
    public static void main(String[] args) {
        try {
            InputStream inputStream = new FileInputStream(new File("src/maxPriceForEachGroup.xqy"));
            XQDataSource xqDataSource = new SaxonXQDataSource();
            XQConnection connection = xqDataSource.getConnection();

            XQPreparedExpression expression = connection.prepareExpression(inputStream);

            XQResultSequence result = expression.executeQuery();

            while (result.next()) {
                System.out.println(result.getItemAsString(null));
            }

        } catch (FileNotFoundException | XQException e) {
            e.printStackTrace();
        }
    }
}
