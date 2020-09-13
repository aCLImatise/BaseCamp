version 1.0

task Prj2make {
  command <<<
    prj2make
  >>>
  output {
    File out_stdout = stdout()
  }
}