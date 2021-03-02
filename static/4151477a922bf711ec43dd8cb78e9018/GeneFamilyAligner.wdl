version 1.0

task GeneFamilyAligner {
  command <<<
    GeneFamilyAligner
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}