version 1.0

task MafTile2py {
  command <<<
    maf_tile_2_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}