version 1.0

task RibotricerOrfsSeq {
  input {
    String? ribot_ricer_index
    String? fast_a
    Boolean? protein
    String? save_to
  }
  command <<<
    ribotricer orfs-seq \
      ~{if defined(ribot_ricer_index) then ("--ribotricer_index " +  '"' + ribot_ricer_index + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{true="--protein" false="" protein} \
      ~{if defined(save_to) then ("--saveto " +  '"' + save_to + '"') else ""}
  >>>
  parameter_meta {
    ribot_ricer_index: "Path to the index file of ribotricer This file should be generated using ribotricer prepare-orfs [required]"
    fast_a: "Path to FASTA file  [required]"
    protein: "Output protein sequence instead of nucleotide"
    save_to: "Path to output file  [required]"
  }
}