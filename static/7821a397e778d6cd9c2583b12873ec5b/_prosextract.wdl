version 1.0

task Prosextract {
  command <<<
    _prosextract
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}