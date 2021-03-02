version 1.0

task GetStandardHeaders {
  command <<<
    get_standard_headers
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}