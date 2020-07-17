version 1.0

task Minipolish {
  input {
    String? threads
    String? rounds
    Boolean? pac_bio
    String reads
    String assembly
  }
  command <<<
    minipolish \
      ~{reads} \
      ~{assembly} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(rounds) then ("--rounds " +  '"' + rounds + '"') else ""} \
      ~{true="--pacbio" false="" pac_bio}
  >>>
  parameter_meta {
    threads: "Number of threads to use for alignment and polishing (default: 8)"
    rounds: "Number of full Racon polishing rounds (default: 2)"
    pac_bio: "Use this flag for PacBio reads to make Minipolish use the map-pb Minimap2 preset (default: assumes Nanopore reads and uses the map-ont preset)"
    reads: "Long reads for polishing (FASTA or FASTQ format)"
    assembly: "Miniasm assembly to be polished (GFA format)"
  }
}