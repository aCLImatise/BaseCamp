version 1.0

task RAPPASjar {
  command <<<
    RAPPAS_jar
  >>>
  output {
    File out_stdout = stdout()
  }
}