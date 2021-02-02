version 1.0

task Stagviewpl {
  command <<<
    stag_view_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}