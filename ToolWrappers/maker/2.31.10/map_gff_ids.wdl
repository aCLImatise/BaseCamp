version 1.0

task MapGffIds {
  command <<<
    map_gff_ids
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}