version 1.0

task Classifierjar {
  command <<<
    classifier_jar
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}