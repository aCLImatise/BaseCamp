version 1.0

task VarlociraptorPreprocess {
  command <<<
    varlociraptor preprocess
  >>>
  output {
    File out_stdout = stdout()
  }
}