version 1.0

task ChorusPBGUI {
  command <<<
    ChorusPBGUI
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}