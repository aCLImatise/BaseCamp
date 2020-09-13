version 1.0

task Convertfilestopdf {
  command <<<
    convertfilestopdf
  >>>
  output {
    File out_stdout = stdout()
  }
}