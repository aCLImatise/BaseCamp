version 1.0

task Chewie {
  command <<<
    chewie
  >>>
  output {
    File out_stdout = stdout()
  }
}