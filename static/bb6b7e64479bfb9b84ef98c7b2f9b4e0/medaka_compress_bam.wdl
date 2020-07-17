version 1.0

task MedakaCompressBam {
  input {
    String bam_input
    String bam_output
    String ref_fname
  }
  command <<<
    medaka compress_bam \
      ~{bam_input} \
      ~{bam_output} \
      ~{ref_fname}
  >>>
  parameter_meta {
    bam_input: "Bam file to compress."
    bam_output: "Output bam file."
    ref_fname: "Reference fasta file used for `bam_input`."
  }
}