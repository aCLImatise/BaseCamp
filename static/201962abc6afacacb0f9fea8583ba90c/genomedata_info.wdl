version 1.0

task Genomedatainfo {
  command <<<
    genomedata_info
  >>>
  output {
    File out_stdout = stdout()
  }
}