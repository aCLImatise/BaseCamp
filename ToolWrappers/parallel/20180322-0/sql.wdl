version 1.0

task Sql {
  command <<<
    sql
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}