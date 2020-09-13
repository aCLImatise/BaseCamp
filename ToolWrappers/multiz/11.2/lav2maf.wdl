version 1.0

task Lav2maf {
  command <<<
    lav2maf
  >>>
  output {
    File out_stdout = stdout()
  }
}