version 1.0

task Cvbio {
  command <<<
    cvbio
  >>>
  output {
    File out_stdout = stdout()
  }
}