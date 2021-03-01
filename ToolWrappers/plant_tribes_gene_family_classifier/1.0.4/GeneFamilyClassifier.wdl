version 1.0

task GeneFamilyClassifier {
  command <<<
    GeneFamilyClassifier
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}