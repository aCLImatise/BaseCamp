version 1.0

task GotreeUploadItol {
  input {
    String? name
    String? project
    String? user_id
    String? format
    String? input_tree_default
    Int? seed
    Int? threads
    String? flags
  }
  command <<<
    gotree upload itol \
      ~{flags} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(project) then ("--project " +  '"' + project + '"') else ""} \
      ~{if defined(user_id) then ("--user-id " +  '"' + user_id + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(input_tree_default) then ("--input " +  '"' + input_tree_default + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    name: "iTOL tree name prefix (default \"tree\")"
    project: "iTOL project to upload the tree"
    user_id: "iTOL User upload id"
    format: "Input tree format (newick, nexus, or phyloxml) (default \"newick\")"
    input_tree_default: "Input tree (default \"stdin\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=8) (default 1)"
    flags: ""
  }
}