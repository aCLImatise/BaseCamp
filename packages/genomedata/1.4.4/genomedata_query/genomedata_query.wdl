version 1.0

task Genomedataquery {
  command <<<
    genomedata_query
  >>>
  output {
    File out_stdout = stdout()
  }
}