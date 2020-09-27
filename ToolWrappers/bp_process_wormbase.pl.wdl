version 1.0

task BpProcessWormbasepl {
  command <<<
    bp_process_wormbase_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}