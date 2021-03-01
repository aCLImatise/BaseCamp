version 1.0

task Umitools {
  input {
    String subcommand
  }
  command <<<
    umitools \
      ~{subcommand}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    subcommand: "See https://github.com/weng-lab/umitools for more information.\\nFor UMI RNA-seq: First, use umitools reformat_fastq to identify\\nUMIs in UMI RNA-seq. Then, use umitools mark_duplicates to mark\\nPCR duplicates. For UMI small RNA-seq: Use umitools\\nreformat_sra_fastq to identify UMIs and PCR duplicates. To\\nsimulate UMIs, use umitools simulate."
  }
  output {
    File out_stdout = stdout()
  }
}