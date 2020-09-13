version 1.0

task ScoaryGUI {
  command <<<
    scoary_GUI
  >>>
  output {
    File out_stdout = stdout()
  }
}