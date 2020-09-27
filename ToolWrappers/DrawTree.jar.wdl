version 1.0

task DrawTreejar {
  command <<<
    DrawTree_jar
  >>>
  output {
    File out_stdout = stdout()
  }
}