version 1.0

task BedtoolsBamtofastq {
  input {
    Boolean? fq_two
    Boolean? tags
    String? fq
    String? i
    String bam_to_fast_q
  }
  command <<<
    bedtools bamtofastq \
      ~{bam_to_fast_q} \
      ~{if (fq_two) then "-fq2" else ""} \
      ~{if (tags) then "-tags" else ""} \
      ~{if defined(fq) then ("-fq " +  '"' + fq + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fq_two: "FASTQ for second end.  Used if BAM contains paired-end data.\\nBAM should be sorted by query name is creating paired FASTQ."
    tags: "Create FASTQ based on the mate info\\nin the BAM R2 and Q2 tags."
    fq: ""
    i: ""
    bam_to_fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}