version 1.0

task GoalignRename {
  input {
    Boolean? clean_names
    File? map_file
    File? renamed_alignment_output
    String? regexp
    String? replace
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
    goalign rename \
      ~{if (clean_names) then "--clean-names" else ""} \
      ~{if defined(map_file) then ("--map-file " +  '"' + map_file + '"') else ""} \
      ~{if defined(renamed_alignment_output) then ("--output " +  '"' + renamed_alignment_output + '"') else ""} \
      ~{if defined(regexp) then ("--regexp " +  '"' + regexp + '"') else ""} \
      ~{if defined(replace) then ("--replace " +  '"' + replace + '"') else ""} \
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
  parameter_meta {
    clean_names: "Replaces special characters (tabs, spaces, newick characters) with '-' from input sequence names before writing output alignment"
    map_file: "Name Mapping infile (default \\\"none\\\")"
    renamed_alignment_output: "renamed alignment output file (default \\\"stdout\\\")"
    regexp: "rename alignment using given regexp (default \\\"none\\\")"
    replace: "replaces regexp matching strings by this string (default \\\"none\\\")"
    revert: "Reverse orientation of mapfile"
    unaligned: "Considers sequences as unaligned and format fasta (phylip, nexus,... options are ignored)"
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
    File out_renamed_alignment_output = "${in_renamed_alignment_output}"
  }
}