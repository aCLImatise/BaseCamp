version 1.0

task GoalignShuffleRogue {
  input {
    Float? length
    Float? prop_seq
    String? rogue_file
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
    String? flags
  }
  command <<<
    goalign shuffle rogue \
      ~{flags} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(prop_seq) then ("--prop-seq " +  '"' + prop_seq + '"') else ""} \
      ~{if defined(rogue_file) then ("--rogue-file " +  '"' + rogue_file + '"') else ""} \
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
    length: "Proportion of the sites to shuffle (default 0.5)"
    prop_seq: "Proportion of the  sequences to consider as rogue (default 0.5)"
    rogue_file: "Rogue sequence names output file (default \"stdout\")"
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
    flags: ""
  }
}