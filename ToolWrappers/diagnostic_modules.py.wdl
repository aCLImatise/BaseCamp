version 1.0

task DiagnosticModulespy {
  command <<<
    diagnostic_modules_py
  >>>
  output {
    File out_stdout = stdout()
  }
}