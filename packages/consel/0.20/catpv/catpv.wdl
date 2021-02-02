version 1.0

task Catpv {
  command <<<
    catpv
  >>>
  output {
    File out_stdout = stdout()
  }
}