version 1.0

task Irisjar {
  command <<<
    iris_jar
  >>>
  output {
    File out_stdout = stdout()
  }
}