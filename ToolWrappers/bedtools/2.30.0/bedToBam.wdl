version 1.0

task BedToBam {
  input {
    Boolean? mapq
    Boolean? be_done_two
    Boolean? ub_am
    String? g
    String? i
  }
  command <<<
    bedToBam \
      ~{if (mapq) then "-mapq" else ""} \
      ~{if (be_done_two) then "-bed12" else ""} \
      ~{if (ub_am) then "-ubam" else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0"
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