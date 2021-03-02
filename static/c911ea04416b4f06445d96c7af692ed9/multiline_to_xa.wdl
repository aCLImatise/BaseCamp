version 1.0

task Multilinetoxa {
  command <<<
    multiline_to_xa
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}