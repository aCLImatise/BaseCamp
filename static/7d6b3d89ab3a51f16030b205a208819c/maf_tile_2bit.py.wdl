version 1.0

task MafTile2bitpy {
  command <<<
    maf_tile_2bit_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}