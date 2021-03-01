version 1.0

task Genomedatainfo {
  command <<<
    genomedata_info
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}