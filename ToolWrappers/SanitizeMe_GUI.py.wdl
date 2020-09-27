version 1.0

task SanitizeMeGUIpy {
  command <<<
    SanitizeMe_GUI_py
  >>>
  output {
    File out_stdout = stdout()
  }
}