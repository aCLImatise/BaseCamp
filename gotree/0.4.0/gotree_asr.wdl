version 1.0

task GotreeAsr {
  input {
    String? algo
    File? align
    String? input_tree_default
    Boolean? input_strict
    File? output_file_default
    Boolean? phylip
    Boolean? random_resolve
    String? format
    Int? seed
    Int? threads
  }
  command <<<
    gotree asr \
      ~{if defined(algo) then ("--algo " +  '"' + algo + '"') else ""} \
      ~{if defined(align) then ("--align " +  '"' + align + '"') else ""} \
      ~{if defined(input_tree_default) then ("--input " +  '"' + input_tree_default + '"') else ""} \
      ~{if (input_strict) then "--input-strict" else ""} \
      ~{if defined(output_file_default) then ("--output " +  '"' + output_file_default + '"') else ""} \
      ~{if (phylip) then "--phylip" else ""} \
      ~{if (random_resolve) then "--random-resolve" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    algo: "Parsimony algorithm for resolving ambiguities: acctran, deltran, or downpass (default \\\"acctran\\\")"
    align: "Alignment input file (default \\\"stdin\\\")"
    input_tree_default: "Input tree (default \\\"stdin\\\")"
    input_strict: "Strict phylip input format (only used with -p)"
    output_file_default: "Output file (default \\\"stdout\\\")"
    phylip: "Alignment is in phylip? default : false (Fasta)"
    random_resolve: "Random resolve states when several possibilities in: acctran, deltran, or downpass"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=8) (default 1)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_default = "${in_output_file_default}"
  }
}