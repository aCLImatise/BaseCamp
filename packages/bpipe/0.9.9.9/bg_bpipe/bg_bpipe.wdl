version 1.0

task Bgbpipe {
  command <<<
    bg_bpipe
  >>>
  output {
    File out_stdout = stdout()
  }
}