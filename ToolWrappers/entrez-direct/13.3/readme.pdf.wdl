version 1.0

task Readmepdf {
  command <<<
    readme_pdf
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}