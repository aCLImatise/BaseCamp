version 1.0

task MIRfixGUIpy {
  command <<<
    MIRfix_GUI_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}