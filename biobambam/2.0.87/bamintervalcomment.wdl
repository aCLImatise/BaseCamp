version 1.0

task Bamintervalcomment {
  command <<<
    bamintervalcomment
  >>>
  output {
    File out_stdout = stdout()
  }
}