version 1.0

task Maf2lav {
  command <<<
    maf2lav
  >>>
  output {
    File out_stdout = stdout()
  }
}