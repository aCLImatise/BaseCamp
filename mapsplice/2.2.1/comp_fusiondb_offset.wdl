version 1.0

task CompFusiondbOffset {
  command <<<
    comp_fusiondb_offset
  >>>
  output {
    File out_stdout = stdout()
  }
}