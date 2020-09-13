version 1.0

task AlignmentGUIpy {
  command <<<
    AlignmentGUI_py
  >>>
  output {
    File out_stdout = stdout()
  }
}