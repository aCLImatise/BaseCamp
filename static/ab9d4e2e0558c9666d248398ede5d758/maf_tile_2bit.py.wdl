version 1.0

task MafTile2bitpy {
  command <<<
    maf_tile_2bit_py
  >>>
  output {
    File out_stdout = stdout()
  }
}