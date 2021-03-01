version 1.0

task BaseErrordll {
  command <<<
    BaseError_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}