version 1.0

task DiagnosticModulespy {
  command <<<
    diagnostic_modules_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}