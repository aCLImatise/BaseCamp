version 1.0

task Matchfusion2normal {
  command <<<
    matchfusion2normal
  >>>
  output {
    File out_stdout = stdout()
  }
}