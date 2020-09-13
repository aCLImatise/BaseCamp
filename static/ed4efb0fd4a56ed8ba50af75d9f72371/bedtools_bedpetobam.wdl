version 1.0

task BedtoolsBedpetobam {
  input {
    Boolean? mapq
    Boolean? ub_am
    String? g
    String? i
    String bed_pe_to_bam
  }
  command <<<
    bedtools bedpetobam \
      ~{bed_pe_to_bam} \
      ~{if (mapq) then "-mapq" else ""} \
      ~{if (ub_am) then "-ubam" else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    mapq: "Set the mappinq quality for the BAM records.\\n(INT) Default: 255"
    ub_am: "Write uncompressed BAM output. Default writes compressed BAM."
    g: ""
    i: ""
    bed_pe_to_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}