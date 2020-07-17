version 1.0

task Tag {
  input {
    Boolean? v
    String cmd
  }
  command <<<
    tag \
      ~{cmd} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
    cmd: "bae, bcollapse, gff3, locuspocus, merge, occ, pmrna, pep2nuc, sum"
  }
}