version 1.0

task BedparseBed12tobed6Bedfile {
  input {
    Boolean? append_exn
    String? which_exon
    String bed_parse
    String be_done_two_to_bed_six
  }
  command <<<
    bedparse bed12tobed6 bedfile \
      ~{bed_parse} \
      ~{be_done_two_to_bed_six} \
      ~{true="--appendExN" false="" append_exn} \
      ~{if defined(which_exon) then ("--whichExon " +  '"' + which_exon + '"') else ""}
  >>>
  parameter_meta {
    append_exn: ""
    which_exon: ""
    bed_parse: ""
    be_done_two_to_bed_six: ""
  }
}