version 1.0

task Readmepdf {
  command <<<
    readme_pdf
  >>>
  output {
    File out_stdout = stdout()
  }
}