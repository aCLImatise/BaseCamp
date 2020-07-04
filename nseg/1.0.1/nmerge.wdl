version 1.0

task Nmerge {
  input {
    String dbn
  }
  command <<<
    nmerge \
      ~{dbn}
  >>>
  parameter_meta {
    dbn: ""
  }
}