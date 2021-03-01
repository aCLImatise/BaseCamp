version 1.0

task GoalignSubset {
  input {
    Boolean? indices
    File? name_file
    File? alignment_output_file
    Boolean? regexp
    Boolean? revert
    Boolean? unaligned
    File? align
    Boolean? auto_detect
    Boolean? clustal
    Boolean? ignore_identical
    Boolean? input_strict
    Boolean? nexus
    Boolean? no_block
    Boolean? one_line
    Boolean? output_strict
    Boolean? phylip
    Int? seed
    Int? threads
  }
  command <<<
    goalign subset \
      ~{if (indices) then "--indices" else ""} \
      ~{if defined(name_file) then ("--name-file " +  '"' + name_file + '"') else ""} \
      ~{if defined(alignment_output_file) then ("--output " +  '"' + alignment_output_file + '"') else ""} \
      ~{if (regexp) then "--regexp" else ""} \
      ~{if (revert) then "--revert" else ""} \
      ~{if (unaligned) then "--unaligned" else ""} \
      ~{if defined(align) then ("--align " +  '"' + align + '"') else ""} \
      ~{if (auto_detect) then "--auto-detect" else ""} \
      ~{if (clustal) then "--clustal" else ""} \
      ~{if (ignore_identical) then "--ignore-identical" else ""} \
      ~{if (input_strict) then "--input-strict" else ""} \
      ~{if (nexus) then "--nexus" else ""} \
      ~{if (no_block) then "--no-block" else ""} \
      ~{if (one_line) then "--one-line" else ""} \
      ~{if (output_strict) then "--output-strict" else ""} \
      ~{if (phylip) then "--phylip" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    indices: "If true, extracts given sequence indices instead of sequence names (0-based)"
    name_file: "File containing names of sequences to keep (default \\\"stdin\\\")"
    alignment_output_file: "Alignment output file (default \\\"stdout\\\")"
    regexp: "If sequence names are given as regexp patterns (has priority over --indices)"
    revert: "If true, will remove given sequences instead of keeping only them"
    unaligned: "Considers input sequences as unaligned and fasta format (phylip, nexus,... options are ignored)"
    align: "Alignment input file (default \\\"stdin\\\")"
    auto_detect: "Auto detects input format (overrides -p, -x and -u)"
    clustal: "Alignment is in clustal? default fasta"
    ignore_identical: "Ignore duplicated sequences that have the same name and same sequences"
    input_strict: "Strict phylip input format (only used with -p)"
    nexus: "Alignment is in nexus? default fasta"
    no_block: "Write Phylip sequences without space separated blocks (only used with -p)"
    one_line: "Write Phylip sequences on 1 line (only used with -p)"
    output_strict: "Strict phylip output format (only used with -p)"
    phylip: "Alignment is in phylip? default fasta"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (default 1)"
  }
  output {
    File out_stdout = stdout()
    File out_alignment_output_file = "${in_alignment_output_file}"
  }
}