version 1.0

task RbtCollapsereadstofragmentsBam {
  input {
    Boolean? verbose_read_names
    String? flags
    String bam
    Int consensus_fq_one
    Int consensus_fq_two
    String consensus_fq_se
  }
  command <<<
    rbt collapse_reads_to_fragments bam \
      ~{flags} \
      ~{bam} \
      ~{consensus_fq_one} \
      ~{consensus_fq_two} \
      ~{consensus_fq_se} \
      ~{if (verbose_read_names) then "--verbose-read-names" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rust-bio-tools:0.20.4--h4af157f_0"
  }
  parameter_meta {
    verbose_read_names: "Add list of reads that were merged for each consensus read. Note that this can yield very long FASTQ name\\nlines which cannot be handled by some tools."
    flags: ""
    bam: ""
    consensus_fq_one: ""
    consensus_fq_two: ""
    consensus_fq_se: ""
  }
  output {
    File out_stdout = stdout()
  }
}