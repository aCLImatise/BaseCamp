version 1.0

task AdminEnsemblReferenceFileGeneratorpl {
  command <<<
    Admin_EnsemblReferenceFileGenerator_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}