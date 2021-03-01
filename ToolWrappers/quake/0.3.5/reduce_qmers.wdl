version 1.0

task Reduceqmers {
  command <<<
    reduce_qmers
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}