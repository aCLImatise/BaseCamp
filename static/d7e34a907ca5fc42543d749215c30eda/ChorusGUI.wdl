version 1.0

task ChorusGUI {
  command <<<
    ChorusGUI
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}