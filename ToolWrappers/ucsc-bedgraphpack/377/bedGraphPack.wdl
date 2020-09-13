version 1.0

task BedGraphPack {
  command <<<
    bedGraphPack
  >>>
  output {
    File out_stdout = stdout()
  }
}