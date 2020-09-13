version 1.0

task Obabel {
  command <<<
    obabel
  >>>
  output {
    File out_stdout = stdout()
  }
}