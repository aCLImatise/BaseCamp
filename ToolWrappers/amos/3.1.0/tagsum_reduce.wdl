version 1.0

task Tagsumreduce {
  command <<<
    tagsum_reduce
  >>>
  output {
    File out_stdout = stdout()
  }
}