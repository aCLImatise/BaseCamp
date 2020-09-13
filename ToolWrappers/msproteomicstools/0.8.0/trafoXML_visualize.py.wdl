version 1.0

task TrafoXMLVisualizepy {
  command <<<
    trafoXML_visualize_py
  >>>
  output {
    File out_stdout = stdout()
  }
}