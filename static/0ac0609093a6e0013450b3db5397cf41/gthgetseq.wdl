version 1.0

task Gthgetseq {
  input {
    Boolean? get_cdna
  }
  command <<<
    gthgetseq \
      ~{true="-getcdna" false="" get_cdna}
  >>>
  parameter_meta {
    get_cdna: ""
  }
}