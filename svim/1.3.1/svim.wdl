version 1.0

task Svim {
  command <<<
    svim
  >>>
  output {
    File out_stdout = stdout()
  }
}