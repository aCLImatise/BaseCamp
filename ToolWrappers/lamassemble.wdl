version 1.0

task Lamassemble {
  input {
    Boolean? alignment
    Boolean? consensus
    Int? gap_max
    String? name
    String? out
    Float? prob
    Int? diagonal_max
    Boolean? verbose
    Boolean? all
    String? maff_t
    Int? number_parallel_threads
    Int? use_minimum_positions
    Int? max_initial_matches
    Int? max_gap_length
    String last_train_dot_out
    String sequences_dot_fx
  }
  command <<<
    lamassemble \
      ~{last_train_dot_out} \
      ~{sequences_dot_fx} \
      ~{if (alignment) then "--alignment" else ""} \
      ~{if (consensus) then "--consensus" else ""} \
      ~{if defined(gap_max) then ("--gap-max " +  '"' + gap_max + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(prob) then ("--prob " +  '"' + prob + '"') else ""} \
      ~{if defined(diagonal_max) then ("--diagonal-max " +  '"' + diagonal_max + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (all) then "--all" else ""} \
      ~{if defined(maff_t) then ("--mafft " +  '"' + maff_t + '"') else ""} \
      ~{if defined(number_parallel_threads) then ("-P " +  '"' + number_parallel_threads + '"') else ""} \
      ~{if defined(use_minimum_positions) then ("-W " +  '"' + use_minimum_positions + '"') else ""} \
      ~{if defined(max_initial_matches) then ("-m " +  '"' + max_initial_matches + '"') else ""} \
      ~{if defined(max_gap_length) then ("-z " +  '"' + max_gap_length + '"') else ""}
  >>>
  parameter_meta {
    alignment: "print an alignment, not a consensus"
    consensus: "just make a consensus, of already-aligned sequences"
    gap_max: "use alignment columns with <= G% gaps (default=50)"
    name: "name of the consensus sequence (default=lamassembled)"
    out: "just write MAFFT input files, named BASE.xxx"
    prob: "use pairwise restrictions with error probability <= P\\n(default=0.002)"
    diagonal_max: "max change in alignment diagonal between pairwise\\nalignments (default=1000)"
    verbose: "show progress messages"
    all: "use all of each sequence, not just aligning part"
    maff_t: "additional arguments for MAFFT"
    number_parallel_threads: "number of parallel threads (default=1)"
    use_minimum_positions: "use minimum positions in length-W windows (default=19)"
    max_initial_matches: "max initial matches per query position (default=5)"
    max_gap_length: "max gap length (default=30)"
    last_train_dot_out: ""
    sequences_dot_fx: ""
  }
  output {
    File out_stdout = stdout()
  }
}