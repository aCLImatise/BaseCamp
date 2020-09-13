version 1.0

task Vcffirstheader {
  command <<<
    vcffirstheader
  >>>
  output {
    File out_stdout = stdout()
  }
}