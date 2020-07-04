version 1.0

task PickUniquePolish {
  input {
    String? only_report_alignments
    Boolean? cq
    Boolean? cg
    Boolean? c
    Boolean? one
    Boolean? gff_three
    File var_6
    File var_7
  }
  command <<<
    pickUniquePolish \
      ~{var_6} \
      ~{var_7} \
      ~{if defined(only_report_alignments) then ("-q " +  '"' + only_report_alignments + '"') else ""} \
      ~{true="-cq" false="" cq} \
      ~{true="-cg" false="" cg} \
      ~{true="-c" false="" c} \
      ~{true="-1" false="" one} \
      ~{true="-gff3" false="" gff_three}
  >>>
  parameter_meta {
    only_report_alignments: "Only report alignments where the best is qualDiff better in percent identity and coverage"
    cq: "Only report alignments that are not contained in some other alignment in the QUERY SEQUENCE."
    cg: "Only report alignments that are not contained in some other alignment in the GENOMIC SEQUENCE."
    c: ""
    one: ""
    gff_three: ""
    var_6: ""
    var_7: ""
  }
}