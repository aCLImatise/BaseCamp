version 1.0

task MafTilepy {
  command <<<
    maf_tile_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}