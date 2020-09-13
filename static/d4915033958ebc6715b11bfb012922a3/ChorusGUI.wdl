version 1.0

task ChorusGUI {
  command <<<
    ChorusGUI
  >>>
  output {
    File out_stdout = stdout()
  }
}