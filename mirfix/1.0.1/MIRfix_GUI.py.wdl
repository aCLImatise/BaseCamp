version 1.0

task MIRfixGUIpy {
  command <<<
    MIRfix_GUI_py
  >>>
  output {
    File out_stdout = stdout()
  }
}