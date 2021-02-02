version 1.0

task GoalignReformat {
  input {
    Boolean? clean_names
    File? reformated_alignment_output
    Boolean? unaligned
    File? align
    Boolean? auto_detect
    Boolean? alignment_clustal_default
    Boolean? ignore_identical
    Boolean? input_strict
    Boolean? alignment_nexus_default
    Boolean? no_block
    Boolean? one_line
    Boolean? output_strict
    Boolean? alignment_phylip_default
    Int? seed
    Int? threads
    String reformats_input_alignment_clustal
    String fast_a
    String reformats_input_alignment_nexus
    String paml
    String reformats_input_alignment_phylip
    String tnt
  }
  command <<<
    goalign reformat \
      ~{reformats_input_alignment_clustal} \
      ~{fast_a} \
      ~{reformats_input_alignment_nexus} \
      ~{paml} \
      ~{reformats_input_alignment_phylip} \
      ~{tnt} \
      ~{if (clean_names) then "--clean-names" else ""} \
      ~{if defined(reformated_alignment_output) then ("--output " +  '"' + reformated_alignment_output + '"') else ""} \
      ~{if (unaligned) then "--unaligned" else ""} \
      ~{if defined(align) then ("--align " +  '"' + align + '"') else ""} \
      ~{if (auto_detect) then "--auto-detect" else ""} \
      ~{if (alignment_clustal_default) then "--clustal" else ""} \
      ~{if (ignore_identical) then "--ignore-identical" else ""} \
      ~{if (input_strict) then "--input-strict" else ""} \
      ~{if (alignment_nexus_default) then "--nexus" else ""} \
      ~{if (no_block) then "--no-block" else ""} \
      ~{if (one_line) then "--one-line" else ""} \
      ~{if (output_strict) then "--output-strict" else ""} \
      ~{if (alignment_phylip_default) then "--phylip" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    clean_names: "Replaces special characters (tabs, spaces, newick characters) with '-' from input sequence names before writing output alignment"
    reformated_alignment_output: "Reformated alignment output file (default \\\"stdout\\\")"
    unaligned: "Considers sequences as unaligned and format fasta (phylip, nexus,... options are ignored)"
    align: "Alignment input file (default \\\"stdin\\\")"
    auto_detect: "Auto detects input format (overrides -p, -x and -u)"
    alignment_clustal_default: "Alignment is in clustal? default fasta"
    ignore_identical: "Ignore duplicated sequences that have the same name and same sequences"
    input_strict: "Strict phylip input format (only used with -p)"
    alignment_nexus_default: "Alignment is in nexus? default fasta"
    no_block: "Write Phylip sequences without space separated blocks (only used with -p)"
    one_line: "Write Phylip sequences on 1 line (only used with -p)"
    output_strict: "Strict phylip output format (only used with -p)"
    alignment_phylip_default: "Alignment is in phylip? default fasta"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (default 1)"
    reformats_input_alignment_clustal: "Reformats an input alignment into Clustal format"
    fast_a: "Reformats an input alignment into Fasta"
    reformats_input_alignment_nexus: "Reformats an input alignment into nexus"
    paml: "Reformats an input alignment into input data for PAML"
    reformats_input_alignment_phylip: "Reformats an input alignment into Phylip"
    tnt: "Reformats an input alignment into input data for TNT"
  }
  output {
    File out_stdout = stdout()
    File out_reformated_alignment_output = "${in_reformated_alignment_output}"
  }
}