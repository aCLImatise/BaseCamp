version 1.0

task BpHivqpl {
  command <<<
    bp_hivq_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}