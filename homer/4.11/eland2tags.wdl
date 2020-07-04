version 1.0

task Eland2tags.pl {
  input {
    Boolean? mis
    Boolean? len
    Boolean? uniq
    Boolean? seq
    Boolean? non_uniq
  }
  command <<<
    eland2tags.pl \
      ~{true="-mis" false="" mis} \
      ~{true="-len" false="" len} \
      ~{true="-uniq" false="" uniq} \
      ~{true="-seq" false="" seq} \
      ~{true="-nonuniq" false="" non_uniq}
  >>>
  parameter_meta {
    mis: "<0,1,2> (Max mismatches, default=2)"
    len: "# (only consider mismatches within the first # bp of sequence [for eland_extended]-def: 32)"
    uniq: "<#> (Max matches to genome for multiple eland format, default=1)"
    seq: "(include sequence with tag)"
    non_uniq: "(include a single version of nonuniq tags, bowtie only)"
  }
}