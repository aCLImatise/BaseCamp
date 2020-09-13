version 1.0

task ChorusPBGUI {
  command <<<
    ChorusPBGUI
  >>>
  output {
    File out_stdout = stdout()
  }
}