version 1.0

task Umis {
  command <<<
    umis
  >>>
  output {
    File out_stdout = stdout()
  }
}