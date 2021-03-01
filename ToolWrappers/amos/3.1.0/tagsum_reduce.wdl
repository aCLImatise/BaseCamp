version 1.0

task Tagsumreduce {
  command <<<
    tagsum_reduce
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}