version 1.0

task Snnsbat {
  command <<<
    snnsbat
  >>>
  output {
    File out_stdout = stdout()
  }
}