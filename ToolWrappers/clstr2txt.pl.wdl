version 1.0

task Clstr2txtpl {
  command <<<
    clstr2txt_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}