version 1.0

task BedtoolsBedtobam {
  input {
    Boolean? mapq
    Boolean? be_done_two
    Boolean? ub_am
    String? g
    String? i
  }
  command <<<
    bedtools bedtobam \
      ~{if (mapq) then "-mapq" else ""} \
      ~{if (be_done_two) then "-bed12" else ""} \
      ~{if (ub_am) then "-ubam" else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mapq: "Set the mappinq quality for the BAM records.\\n(INT) Default: 255"
    be_done_two: "The BED file is in BED12 format.  The BAM CIGAR\\nstring will reflect BED \\\"blocks\\\"."
    ub_am: "Write uncompressed BAM output. Default writes compressed BAM."
    g: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}