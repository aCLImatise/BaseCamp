version 1.0

task Bamsormadup {
  command <<<
    bamsormadup
  >>>
  output {
    File out_stdout = stdout()
  }
}