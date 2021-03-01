version 1.0

task GotreeAcr {
  input {
    String? algo
    String? input_tree_default
    File? out_states
    File? output_file_default
    Boolean? random_resolve
    File? states
    String? format
    Int? seed
    Int? threads
  }
  command <<<
    gotree acr \
      ~{if defined(algo) then ("--algo " +  '"' + algo + '"') else ""} \
      ~{if defined(input_tree_default) then ("--input " +  '"' + input_tree_default + '"') else ""} \
      ~{if defined(out_states) then ("--out-states " +  '"' + out_states + '"') else ""} \
      ~{if defined(output_file_default) then ("--output " +  '"' + output_file_default + '"') else ""} \
      ~{if (random_resolve) then "--random-resolve" else ""} \
      ~{if defined(states) then ("--states " +  '"' + states + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    algo: "Parsimony algorithm for resolving ambiguities: acctran, deltran, or downpass (default \\\"acctran\\\")"
    input_tree_default: "Input tree (default \\\"stdin\\\")"
    out_states: "Output mapping file between node names and states (default \\\"none\\\")"
    output_file_default: "Output file (default \\\"stdout\\\")"
    random_resolve: "Random resolve states when several possibilities in: acctran, deltran, or downpass"
    states: "Tip state file (One line per tip, tab separated: tipname\\tstate) (default \\\"stdin\\\")"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=8) (default 1)"
  }
  output {
    File out_stdout = stdout()
    File out_out_states = "${in_out_states}"
    File out_output_file_default = "${in_output_file_default}"
  }
}