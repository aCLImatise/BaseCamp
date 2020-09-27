version 1.0

task GetStandardHeaders {
  command <<<
    get_standard_headers
  >>>
  output {
    File out_stdout = stdout()
  }
}