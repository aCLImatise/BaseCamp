version 1.0

task Sswjar {
  command <<<
    ssw_jar
  >>>
  output {
    File out_stdout = stdout()
  }
}