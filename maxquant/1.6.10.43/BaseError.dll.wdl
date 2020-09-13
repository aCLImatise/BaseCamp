version 1.0

task BaseErrordll {
  command <<<
    BaseError_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}