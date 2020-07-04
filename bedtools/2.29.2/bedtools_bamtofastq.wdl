version 1.0

task BedtoolsBamtofastq {
  input {
    Boolean? fq_two
    Boolean? tags
    String? i
    String? fq
    String bam_to_fast_q
  }
  command <<<
    bedtools bamtofastq \
      ~{bam_to_fast_q} \
      ~{true="-fq2" false="" fq_two} \
      ~{true="-tags" false="" tags} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(fq) then ("-fq " +  '"' + fq + '"') else ""}
  >>>
  parameter_meta {
    fq_two: "FASTQ for second end.  Used if BAM contains paired-end data. BAM should be sorted by query name is creating paired FASTQ."
    tags: "Create FASTQ based on the mate info in the BAM R2 and Q2 tags."
    i: ""
    fq: ""
    bam_to_fast_q: ""
  }
}