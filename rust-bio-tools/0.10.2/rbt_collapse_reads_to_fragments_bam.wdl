version 1.0

task RbtCollapseReadsToFragmentsBam {
  input {
    Boolean? verbose_read_names
    Int? max_seq_dist
    String? flags
    String bam
    String consensus_bam
  }
  command <<<
    rbt collapse-reads-to-fragments bam \
      ~{flags} \
      ~{bam} \
      ~{consensus_bam} \
      ~{true="--verbose-read-names" false="" verbose_read_names} \
      ~{if defined(max_seq_dist) then ("--max-seq-dist " +  '"' + max_seq_dist + '"') else ""}
  >>>
  parameter_meta {
    verbose_read_names: "Add list of reads that were merged for each consensus read. Note that this can yield very long FASTQ name lines which cannot be handled by some tools."
    max_seq_dist: "Maximum hamming distance between the sequences of any pair of reads in the same cluster. [default: 2]  [possible values: 1, 2, 3, 4, 5, 6, 7, 8]"
    flags: ""
    bam: ""
    consensus_bam: ""
  }
}