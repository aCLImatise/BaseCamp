version 1.0

task Prosextract {
  command <<<
    prosextract
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}