version 1.0

task Reduceqmers {
  command <<<
    reduce_qmers
  >>>
  output {
    File out_stdout = stdout()
  }
}