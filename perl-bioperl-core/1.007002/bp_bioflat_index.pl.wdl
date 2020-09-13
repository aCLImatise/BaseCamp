version 1.0

task BpBioflatIndexpl {
  command <<<
    bp_bioflat_index_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}