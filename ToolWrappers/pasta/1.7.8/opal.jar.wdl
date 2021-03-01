version 1.0

task Opaljar {
  command <<<
    opal_jar
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}