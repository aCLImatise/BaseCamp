version 1.0

task BedtoolsBedpetobam {
  input {
    Boolean? mapq
    Boolean? ub_am
    String? i
    String? g
    String bed_pe_to_bam
  }
  command <<<
    bedtools bedpetobam \
      ~{bed_pe_to_bam} \
      ~{true="-mapq" false="" mapq} \
      ~{true="-ubam" false="" ub_am} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    mapq: "Set the mappinq quality for the BAM records. (INT) Default: 255"
    ub_am: "Write uncompressed BAM output. Default writes compressed BAM."
    i: ""
    g: ""
    bed_pe_to_bam: ""
  }
}