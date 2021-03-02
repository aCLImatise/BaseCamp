version 1.0

task Matchfusion2normal {
  command <<<
    matchfusion2normal
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}