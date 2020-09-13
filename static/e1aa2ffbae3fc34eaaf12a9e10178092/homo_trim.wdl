version 1.0

task HomoTrim {
  command <<<
    homo_trim
  >>>
  output {
    File out_stdout = stdout()
  }
}