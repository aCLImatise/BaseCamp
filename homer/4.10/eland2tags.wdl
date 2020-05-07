version 1.0

task Eland2tags.pl {
  input {
    Boolean misMis
    Boolean lenLen
    Boolean uniqUniq
    Boolean seqSeq
    Boolean nonNonUniq
  }
  command <<<
    eland2tags.pl \
      ~{true="-mis" false="" misMis} \
      ~{true="-len" false="" lenLen} \
      ~{true="-uniq" false="" uniqUniq} \
      ~{true="-seq" false="" seqSeq} \
      ~{true="-nonuniq" false="" nonNonUniq}
  >>>
}