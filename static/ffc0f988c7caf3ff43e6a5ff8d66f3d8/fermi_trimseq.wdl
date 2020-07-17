version 1.0

task FermiTrimseq {
  input {
    Boolean? n
  }
  command <<<
    fermi trimseq \
      ~{true="-N" false="" n}
  >>>
  parameter_meta {
    n: ""
  }
}