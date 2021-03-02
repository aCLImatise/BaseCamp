version 1.0

task ExtractVba {
  command <<<
    extract_vba
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}