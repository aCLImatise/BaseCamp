version 1.0

task Sentieonbwa {
  command <<<
    sentieon_bwa
  >>>
  output {
    File out_stdout = stdout()
  }
}