version 1.0

task GoalignShuffleSites {
  input {
    Float? rate
    Float? rogue
    String? rogue_file
    Boolean? stable_rogues
    String? align
    Boolean? auto_detect
    Boolean? clustal
    Boolean? ignore_identical
    Boolean? input_strict
    Boolean? nexus
    Boolean? no_block
    Boolean? one_line
    String? shuffled_file_default
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
      ~{true="--stable-rogues" false="" stable_rogues} \
      ~{if defined(align) then ("--align " +  '"' + align + '"') else ""} \
      ~{true="--auto-detect" false="" auto_detect} \
      ~{true="--clustal" false="" clustal} \
      ~{true="--ignore-identical" false="" ignore_identical} \
      ~{true="--input-strict" false="" input_strict} \
      ~{true="--nexus" false="" nexus} \
      ~{true="--no-block" false="" no_block} \
      ~{true="--one-line" false="" one_line} \
      ~{if defined(shuffled_file_default) then ("--output " +  '"' + shuffled_file_default + '"') else ""} \
      ~{true="--output-strict" false="" output_strict} \
      ~{true="--phylip" false="" phylip} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    rate: "Rate of shuffled sites (>=0 and <=1) (default 0.5)"
    rogue: "If set, then will take the given proportion of taxa, and will apply shuffle again on --rate of the remaining intact sites"
    rogue_file: "Rogue sequence names output file (default \"stdout\")"
    stable_rogues: "If true, then with a given seed, rogues will always be the same with all alignments having sequences in the same order. It may not be the case if false, especially when alignemnts have different lengths."
    align: "Alignment input file (default \"stdin\")"
    auto_detect: "Auto detects input format (overrides -p, -x and -u)"
    clustal: "Alignment is in clustal? default fasta"
    ignore_identical: "Ignore duplicated sequences that have the same name and same sequences"
    input_strict: "Strict phylip input format (only used with -p)"
    nexus: "Alignment is in nexus? default fasta"
    no_block: "Write Phylip sequences without space separated blocks (only used with -p)"
    one_line: "Write Phylip sequences on 1 line (only used with -p)"
    shuffled_file_default: "Shuffled alignment output file (default \"stdout\")"
    output_strict: "Strict phylip output format (only used with -p)"
    phylip: "Alignment is in phylip? default fasta"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (default 1)"
  }
}