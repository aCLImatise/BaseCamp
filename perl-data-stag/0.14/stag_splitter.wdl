version 1.0

task StagSplitter.pl {
  input {
    Boolean dirDir
  }
  command <<<
    stag-splitter.pl \
      ~{true="-dir" false="" dirDir}
  >>>
}