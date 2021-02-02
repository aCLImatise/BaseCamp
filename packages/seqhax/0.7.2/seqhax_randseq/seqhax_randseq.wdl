version 1.0

task SeqhaxRandseq {
  input {
    Int? number_reads_use
    String? seed_for_rng
    Int? length_of_read
    Boolean? paired_reads
    Boolean? output_fasta_qualities
    String seq_hax
  }
  command <<<
    seqhax randseq \
      ~{seq_hax} \
      ~{if defined(number_reads_use) then ("-n " +  '"' + number_reads_use + '"') else ""} \
      ~{if defined(seed_for_rng) then ("-s " +  '"' + seed_for_rng + '"') else ""} \
      ~{if defined(length_of_read) then ("-l " +  '"' + length_of_read + '"') else ""} \
      ~{if (paired_reads) then "-p" else ""} \
      ~{if (output_fasta_qualities) then "-f" else ""}
  >>>
  parameter_meta {
    number_reads_use: "Number of reads. Use 0 for infinite. [default 1000]"
    seed_for_rng: "Seed for RNG."
    length_of_read: "Length of each read. [default 100]"
    paired_reads: "Paired reads [default false]"
    output_fasta_qualities: "Output as fasta (no qualities)"
    seq_hax: ""
  }
  output {
    File out_stdout = stdout()
  }
}