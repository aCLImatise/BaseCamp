version 1.0

task CompFusiondbOffset {
  command <<<
    comp_fusiondb_offset
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}