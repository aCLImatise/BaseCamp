version 1.0

task SanitizeMeGUIpy {
  command <<<
    SanitizeMe_GUI_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}