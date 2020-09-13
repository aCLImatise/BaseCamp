version 1.0

task QuasitoolsCall {
  command <<<
    quasitools call
  >>>
  output {
    File out_stdout = stdout()
  }
}