version 1.0

task Opaljar {
  command <<<
    opal_jar
  >>>
  output {
    File out_stdout = stdout()
  }
}