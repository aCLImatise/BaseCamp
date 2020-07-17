version 1.0

task GoalignReformat {
  input {
    Boolean? clean_names
    String? reformated_alignment_output
    Boolean? unaligned
    String? align
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
      ~{true="--clean-names" false="" clean_names} \
      ~{if defined(reformated_alignment_output) then ("--output " +  '"' + reformated_alignment_output + '"') else ""} \
      ~{true="--unaligned" false="" unaligned} \
      ~{if defined(align) then ("--align " +  '"' + align + '"') else ""} \
      ~{true="--auto-detect" false="" auto_detect} \
      ~{true="--clustal" false="" alignment_clustal_default} \
      ~{true="--ignore-identical" false="" ignore_identical} \
      ~{true="--input-strict" false="" input_strict} \
      ~{true="--nexus" false="" alignment_nexus_default} \
      ~{true="--no-block" false="" no_block} \
      ~{true="--one-line" false="" one_line} \
      ~{true="--output-strict" false="" output_strict} \
      ~{true="--phylip" false="" alignment_phylip_default} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    clean_names: "Replaces special characters (tabs, spaces, newick characters) with '-' from input sequence names before writing output alignment"
    reformated_alignment_output: "Reformated alignment output file (default \"stdout\")"
    unaligned: "Considers sequences as unaligned and format fasta (phylip, nexus,... options are ignored)"
    align: "Alignment input file (default \"stdin\")"
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
}