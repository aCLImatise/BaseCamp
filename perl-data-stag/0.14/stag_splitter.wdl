version 1.0

task StagSplitter.pl {
  input {
    Boolean? dir
  }
  command <<<
    stag-splitter.pl \
      ~{true="-dir" false="" dir}
  >>>
  parameter_meta {
    dir: "|d DIR write files to this directory"
  }
}