version 1.0

task GotreeRepopulate {
  input {
    File? id_groups
    String? input_tree_default
    File? renamed_tree_output
    String? format
    Int? seed
    Int? threads
    String branches_dot
    String before
  }
  command <<<
    gotree repopulate \
      ~{branches_dot} \
      ~{before} \
      ~{if defined(id_groups) then ("--id-groups " +  '"' + id_groups + '"') else ""} \
      ~{if defined(input_tree_default) then ("--input " +  '"' + input_tree_default + '"') else ""} \
      ~{if defined(renamed_tree_output) then ("--output " +  '"' + renamed_tree_output + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    id_groups: "File with groups of identical tips (default \\\"none\\\")"
    input_tree_default: "Input tree (default \\\"stdin\\\")"
    renamed_tree_output: "Renamed tree output file (default \\\"stdout\\\")"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=8) (default 1)"
    branches_dot: "Example with Tip1,Tip2 :"
    before: "|   After (if l>0.0)  |  After (if l=0.0)"
  }
  output {
    File out_stdout = stdout()
    File out_renamed_tree_output = "${in_renamed_tree_output}"
  }
}