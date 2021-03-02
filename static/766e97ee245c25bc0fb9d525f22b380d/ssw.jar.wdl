version 1.0

task Sswjar {
  command <<<
    ssw_jar
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}