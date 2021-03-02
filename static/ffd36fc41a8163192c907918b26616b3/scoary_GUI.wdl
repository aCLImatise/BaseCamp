version 1.0

task ScoaryGUI {
  command <<<
    scoary_GUI
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}