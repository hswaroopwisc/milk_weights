make:
	javac -cp .:../javafx/lib --module-path ./javafx/lib --add-modules=javafx.controls,javafx.fxml ./application/*.java
	java -cp .:./application --module-path ./javafx/lib --add-modules=javafx.controls,javafx.fxml application.Main

jar:
	jar -cfm executable.jar manifest.txt .

runjar:
	java --module-path ./javafx/lib --add-modules=javafx.controls,javafx.fxml -jar executable.jar

clean:
	\rm application/*.class
