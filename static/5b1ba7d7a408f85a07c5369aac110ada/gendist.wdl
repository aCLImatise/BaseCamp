version 1.0

task Gendist {
  command <<<
    gendist
  >>>
  output {
    File out_stdout = stdout()
  }
}