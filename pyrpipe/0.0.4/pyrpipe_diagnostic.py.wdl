version 1.0

task PyrpipeDiagnosticpy {
  command <<<
    pyrpipe_diagnostic_py
  >>>
  output {
    File out_stdout = stdout()
  }
}