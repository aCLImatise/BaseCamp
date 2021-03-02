version 1.0

task BedGraphPack {
  command <<<
    bedGraphPack
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}