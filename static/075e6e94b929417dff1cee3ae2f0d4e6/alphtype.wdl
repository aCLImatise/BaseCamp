version 1.0

task Alphtype {
  command <<<
    alphtype
  >>>
  output {
    File out_stdout = stdout()
  }
}