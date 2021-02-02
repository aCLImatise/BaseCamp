version 1.0

task GeneFamilyAligner {
  command <<<
    GeneFamilyAligner
  >>>
  output {
    File out_stdout = stdout()
  }
}