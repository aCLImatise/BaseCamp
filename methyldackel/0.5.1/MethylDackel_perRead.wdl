version 1.0

task MethylDackelPerRead {
  input {
    String ref_dot_fa
    String input_bam_cram
  }
  command <<<
    MethylDackel perRead \
      ~{ref_dot_fa} \
      ~{input_bam_cram}
  >>>
  parameter_meta {
    ref_dot_fa: "Reference genome in fasta format. This must be indexed with samtools faidx"
    input_bam_cram: "An input BAM or CRAM file. This MUST be sorted and should be indexed."
  }
}