version 1.0

task AlignmentGUIpy {
  command <<<
    AlignmentGUI_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}