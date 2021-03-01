version 1.0

task GeneFamilyPhylogenyBuilder {
  command <<<
    GeneFamilyPhylogenyBuilder
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}