version 1.0

task Samdump2 {
  command <<<
    sam_dump_2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}