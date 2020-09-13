version 1.0

task Classifierjar {
  command <<<
    classifier_jar
  >>>
  output {
    File out_stdout = stdout()
  }
}