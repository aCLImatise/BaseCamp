version 1.0

task ShiverMapReadssh {
  command <<<
    shiver_map_reads_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}