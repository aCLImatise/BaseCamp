version 1.0

task GoalignTrimName {
  input {
    Boolean? auto
    Int? nb_char
    File? out_map
    File? align
    Boolean? auto_detect
    Boolean? clustal
    Boolean? ignore_identical
    Boolean? input_strict
    Boolean? nexus
    Boolean? no_block
    Boolean? one_line
    File? out_align
    Boolean? output_strict
    Boolean? phylip
    Int? seed
    Int? threads
  }
  command <<<
    goalign trim name \
      ~{if (auto) then "--auto" else ""} \
      ~{if defined(nb_char) then ("--nb-char " +  '"' + nb_char + '"') else ""} \
      ~{if defined(out_map) then ("--out-map " +  '"' + out_map + '"') else ""} \
      ~{if defined(align) then ("--align " +  '"' + align + '"') else ""} \
      ~{if (auto_detect) then "--auto-detect" else ""} \
      ~{if (clustal) then "--clustal" else ""} \
      ~{if (ignore_identical) then "--ignore-identical" else ""} \
      ~{if (input_strict) then "--input-strict" else ""} \
      ~{if (nexus) then "--nexus" else ""} \
      ~{if (no_block) then "--no-block" else ""} \
      ~{if (one_line) then "--one-line" else ""} \
      ~{if defined(out_align) then ("--out-align " +  '"' + out_align + '"') else ""} \
      ~{if (output_strict) then "--output-strict" else ""} \
      ~{if (phylip) then "--phylip" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    auto: "Automatically generates sequence identifiers (priority over --nb-cchar)"
    nb_char: "Number of characters to keep in sequence names (default 1)"
    out_map: "Mapping output file (default \\\"none\\\")"
    align: "Alignment input file (default \\\"stdin\\\")"
    auto_detect: "Auto detects input format (overrides -p, -x and -u)"
    clustal: "Alignment is in clustal? default fasta"
    ignore_identical: "Ignore duplicated sequences that have the same name and same sequences"
    input_strict: "Strict phylip input format (only used with -p)"
    nexus: "Alignment is in nexus? default fasta"
    no_block: "Write Phylip sequences without space separated blocks (only used with -p)"
    one_line: "Write Phylip sequences on 1 line (only used with -p)"
    out_align: "Renamed alignment output file (default \\\"stdout\\\")"
    output_strict: "Strict phylip output format (only used with -p)"
    phylip: "Alignment is in phylip? default fasta"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (default 1)"
  }
  output {
    File out_stdout = stdout()
    File out_out_map = "${in_out_map}"
    File out_out_align = "${in_out_align}"
  }
}