version 1.0

task MafTile2py {
  command <<<
    maf_tile_2_py
  >>>
  output {
    File out_stdout = stdout()
  }
}