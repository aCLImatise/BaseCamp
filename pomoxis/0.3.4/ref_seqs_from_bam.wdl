version 1.0

task RefSeqsFromBam {
  input {
    String bam
  }
  command <<<
    ref_seqs_from_bam \
      ~{bam}
  >>>
  parameter_meta {
    bam: "input bam file, MD tag must be set (mini_align -m)."
  }
  output {
    File out_stdout = stdout()
  }
}