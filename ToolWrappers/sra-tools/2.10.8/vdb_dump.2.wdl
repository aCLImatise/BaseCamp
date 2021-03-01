version 1.0

task Vdbdump2 {
  command <<<
    vdb_dump_2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}