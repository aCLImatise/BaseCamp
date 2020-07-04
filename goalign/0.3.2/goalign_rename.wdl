version 1.0

task GoalignRename {
  input {
    Boolean? clean_names
    String? map_file
    String? renamed_file_default
    String? regexp
    String? replace
    Boolean? revert
    Boolean? unaligned
    String? align
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
    String? flags
  }
  command <<<
    goalign rename \
      ~{flags} \
      ~{true="--clean-names" false="" clean_names} \
      ~{if defined(map_file) then ("--map-file " +  '"' + map_file + '"') else ""} \
      ~{if defined(renamed_file_default) then ("--output " +  '"' + renamed_file_default + '"') else ""} \
      ~{if defined(regexp) then ("--regexp " +  '"' + regexp + '"') else ""} \
      ~{if defined(replace) then ("--replace " +  '"' + replace + '"') else ""} \
      ~{true="--revert" false="" revert} \
      ~{true="--unaligned" false="" unaligned} \
      ~{if defined(align) then ("--align " +  '"' + align + '"') else ""} \
      ~{true="--auto-detect" false="" auto_detect} \
      ~{true="--clustal" false="" clustal} \
      ~{true="--ignore-identical" false="" ignore_identical} \
      ~{true="--input-strict" false="" input_strict} \
      ~{true="--nexus" false="" nexus} \
      ~{true="--no-block" false="" no_block} \
      ~{true="--one-line" false="" one_line} \
      ~{true="--output-strict" false="" output_strict} \
      ~{true="--phylip" false="" phylip} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    clean_names: "Replaces special characters (tabs, spaces, newick characters) with '-' from input sequence names before writing output alignment"
    map_file: "Name Mapping infile (default \"none\")"
    renamed_file_default: "renamed alignment output file (default \"stdout\")"
    regexp: "rename alignment using given regexp (default \"none\")"
    replace: "replaces regexp matching strings by this string (default \"none\")"
    revert: "Reverse orientation of mapfile"
    unaligned: "Considers sequences as unaligned and format fasta (phylip, nexus,... options are ignored)"
    align: "Alignment input file (default \"stdin\")"
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
    flags: ""
  }
}