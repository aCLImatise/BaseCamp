version 1.0

task SanitizeMePairedGUIpy {
  command <<<
    SanitizeMePaired_GUI_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}