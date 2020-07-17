version 1.0

task Umitools {
  input {
    String subcommand
  }
  command <<<
    umitools \
      ~{subcommand}
  >>>
  parameter_meta {
    subcommand: "See https://github.com/weng-lab/umitools for more information. For UMI RNA-seq: First, use umitools reformat_fastq to identify UMIs in UMI RNA-seq. Then, use umitools mark_duplicates to mark PCR duplicates. For UMI small RNA-seq: Use umitools reformat_sra_fastq to identify UMIs and PCR duplicates. To simulate UMIs, use umitools simulate."
  }
}