version 1.0

task Newsam2junc {
  command <<<
    newsam2junc
  >>>
  output {
    File out_stdout = stdout()
  }
}