version 1.0

task BedToBam {
  input {
    Boolean? mapq
    Boolean? be_done_two
    Boolean? ub_am
    String? i
    String? g
  }
  command <<<
    bedToBam \
      ~{true="-mapq" false="" mapq} \
      ~{true="-bed12" false="" be_done_two} \
      ~{true="-ubam" false="" ub_am} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    mapq: "Set the mappinq quality for the BAM records. (INT) Default: 255"
    be_done_two: "The BED file is in BED12 format.  The BAM CIGAR string will reflect BED \"blocks\"."
    ub_am: "Write uncompressed BAM output. Default writes compressed BAM."
    i: ""
    g: ""
  }
}