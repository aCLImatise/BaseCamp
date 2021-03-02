version 1.0

task BedparseBed12tobed6Bedfile {
  input {
    String? which_exon
    Boolean? append_exn
    String bed_parse
    Int be_done_two_to_bed_six
  }
  command <<<
    bedparse bed12tobed6 bedfile \
      ~{bed_parse} \
      ~{be_done_two_to_bed_six} \
      ~{if defined(which_exon) then ("--whichExon " +  '"' + which_exon + '"') else ""} \
      ~{if (append_exn) then "--appendExN" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    which_exon: ""
    append_exn: ""
    bed_parse: ""
    be_done_two_to_bed_six: ""
  }
  output {
    File out_stdout = stdout()
  }
}