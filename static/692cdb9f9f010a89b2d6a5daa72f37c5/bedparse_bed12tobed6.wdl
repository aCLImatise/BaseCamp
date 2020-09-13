version 1.0

task BedparseBed12tobed6 {
  input {
    Boolean? append_exn
    String? which_exon
    Boolean? keep_introns
  }
  command <<<
    bedparse bed12tobed6 \
      ~{if (append_exn) then "--appendExN" else ""} \
      ~{if defined(which_exon) then ("--whichExon " +  '"' + which_exon + '"') else ""} \
      ~{if (keep_introns) then "--keepIntrons" else ""}
  >>>
  parameter_meta {
    append_exn: "Appends the exon number to the transcript name."
    which_exon: "Which exon to return. First and last respectively\\nreport the first or last exon relative to the TSS\\n(i.e. taking strand into account)."
    keep_introns: "Add records for introns as well. Only allowed if"
  }
  output {
    File out_stdout = stdout()
  }
}