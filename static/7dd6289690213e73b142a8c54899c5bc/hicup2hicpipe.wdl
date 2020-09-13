version 1.0

task Hicup2hicpipe {
  command <<<
    hicup2hicpipe
  >>>
  output {
    File out_stdout = stdout()
  }
}