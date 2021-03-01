version 1.0

task GoalignShuffleSites {
  input {
    Float? rate
    Float? rogue
    File? rogue_file
    Boolean? stable_rogues
    File? align
    Boolean? auto_detect
    Boolean? clustal
    Boolean? ignore_identical
    Boolean? input_strict
    Boolean? nexus
    Boolean? no_block
    Boolean? one_line
    File? shuffled_alignment_output
    Boolean? output_strict
    Boolean? phylip
    Int? seed
    Int? threads
  }
  command <<<
    goalign shuffle sites \
      ~{if defined(rate) then ("--rate " +  '"' + rate + '"') else ""} \
      ~{if defined(rogue) then ("--rogue " +  '"' + rogue + '"') else ""} \
      ~{if defined(rogue_file) then ("--rogue-file " +  '"' + rogue_file + '"') else ""} \
      ~{if (stable_rogues) then "--stable-rogues" else ""} \
      ~{if defined(align) then ("--align " +  '"' + align + '"') else ""} \
      ~{if (auto_detect) then "--auto-detect" else ""} \
      ~{if (clustal) then "--clustal" else ""} \
      ~{if (ignore_identical) then "--ignore-identical" else ""} \
      ~{if (input_strict) then "--input-strict" else ""} \
      ~{if (nexus) then "--nexus" else ""} \
      ~{if (no_block) then "--no-block" else ""} \
      ~{if (one_line) then "--one-line" else ""} \
      ~{if defined(shuffled_alignment_output) then ("--output " +  '"' + shuffled_alignment_output + '"') else ""} \
      ~{if (output_strict) then "--output-strict" else ""} \
      ~{if (phylip) then "--phylip" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    rate: "Rate of shuffled sites (>=0 and <=1) (default 0.5)"
    rogue: "If set, then will take the given proportion of taxa, and will apply shuffle again on --rate of the remaining intact sites"
    rogue_file: "Rogue sequence names output file (default \\\"stdout\\\")"
    stable_rogues: "If true, then with a given seed, rogues will always be the same with all alignments having sequences in the same order. It may not be the case if false, especially when alignemnts have different lengths."
    align: "Alignment input file (default \\\"stdin\\\")"
    auto_detect: "Auto detects input format (overrides -p, -x and -u)"
    clustal: "Alignment is in clustal? default fasta"
    ignore_identical: "Ignore duplicated sequences that have the same name and same sequences"
    input_strict: "Strict phylip input format (only used with -p)"
    nexus: "Alignment is in nexus? default fasta"
    no_block: "Write Phylip sequences without space separated blocks (only used with -p)"
    one_line: "Write Phylip sequences on 1 line (only used with -p)"
    shuffled_alignment_output: "Shuffled alignment output file (default \\\"stdout\\\")"
    output_strict: "Strict phylip output format (only used with -p)"
    phylip: "Alignment is in phylip? default fasta"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (default 1)"
  }
  output {
    File out_stdout = stdout()
    File out_rogue_file = "${in_rogue_file}"
    File out_shuffled_alignment_output = "${in_shuffled_alignment_output}"
  }
}