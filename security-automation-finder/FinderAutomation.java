import java.io.BufferedReader;
import java.io.InputStreamReader;

public class FinderAutomation {
    public static void main(String[] args) {
        try {
            String script = "tell application \"Finder\" to get name of startup disk";
            Process process = Runtime.getRuntime().exec(new String[] {"osascript", "-e", script});
            BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            String line;
            while((line = reader.readLine()) != null) {
                System.out.println("Finder responded: " + line);
            }
            process.waitFor();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}