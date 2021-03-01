version 1.0

task ProBAMGUIpy {
  command <<<
    proBAM_GUI_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}