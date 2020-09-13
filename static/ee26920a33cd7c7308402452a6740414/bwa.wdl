version 1.0

task Bwa {
  command <<<
    bwa
  >>>
  output {
    File out_stdout = stdout()
  }
}