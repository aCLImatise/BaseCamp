version 1.0

task ProBAMGUIpy {
  command <<<
    proBAM_GUI_py
  >>>
  output {
    File out_stdout = stdout()
  }
}