version 1.0

task GeneFamilyPhylogenyBuilder {
  command <<<
    GeneFamilyPhylogenyBuilder
  >>>
  output {
    File out_stdout = stdout()
  }
}