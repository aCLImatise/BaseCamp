version 1.0

task GotreeRename {
  input {
    Int? length
    String? tips
    Boolean? auto
    String? input_tree_default
    Boolean? internal
    File? tip_name_map
    File? renamed_tree_output
    String? regexp
    String? replace
    Boolean? revert
    String? format
    Int? seed
    Int? threads
  }
  command <<<
    gotree rename \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(tips) then ("--tips " +  '"' + tips + '"') else ""} \
      ~{if (auto) then "--auto" else ""} \
      ~{if defined(input_tree_default) then ("--input " +  '"' + input_tree_default + '"') else ""} \
      ~{if (internal) then "--internal" else ""} \
      ~{if defined(tip_name_map) then ("--map " +  '"' + tip_name_map + '"') else ""} \
      ~{if defined(renamed_tree_output) then ("--output " +  '"' + renamed_tree_output + '"') else ""} \
      ~{if defined(regexp) then ("--regexp " +  '"' + regexp + '"') else ""} \
      ~{if defined(replace) then ("--replace " +  '"' + replace + '"') else ""} \
      ~{if (revert) then "--revert" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    length: "Length of automatically generated id. Only with --auto (default 10)"
    tips: "true by default. To inactivate it, you must specify --tips=false ."
    auto: "Renames automatically tips with auto generated id of length 10."
    input_tree_default: "Input tree (default \\\"stdin\\\")"
    internal: "Internal nodes are taken into account"
    tip_name_map: "Tip name map file (default \\\"none\\\")"
    renamed_tree_output: "Renamed tree output file (default \\\"stdout\\\")"
    regexp: "Regexp to get matching tip/node names (default \\\"none\\\")"
    replace: "String replacement to the given regexp (default \\\"none\\\")"
    revert: "Revert orientation of map file"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=8) (default 1)"
  }
  output {
    File out_stdout = stdout()
    File out_renamed_tree_output = "${in_renamed_tree_output}"
  }
}