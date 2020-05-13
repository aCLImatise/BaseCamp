version 1.0

task GenomepyConfigOPTIONS {
  input {
    String? commandCommand
  }
  command <<<
    genomepy config OPTIONS \
      ~{commandCommand}
  >>>
}