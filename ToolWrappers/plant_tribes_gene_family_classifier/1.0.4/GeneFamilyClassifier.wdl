version 1.0

task GeneFamilyClassifier {
  command <<<
    GeneFamilyClassifier
  >>>
  output {
    File out_stdout = stdout()
  }
}