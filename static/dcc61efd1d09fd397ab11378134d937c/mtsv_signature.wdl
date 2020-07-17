version 1.0

task MtsvSignature {
  input {
    Boolean? family
    Boolean? genus
    Boolean? include_flag_trigger
    String? index
    String? path_mtsv_file
    String? lca
    String? threads
    String? output_path_write
  }
  command <<<
    mtsv-signature \
      ~{true="--family" false="" family} \
      ~{true="--genus" false="" genus} \
      ~{true="-v" false="" include_flag_trigger} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(path_mtsv_file) then ("--input " +  '"' + path_mtsv_file + '"') else ""} \
      ~{if defined(lca) then ("--lca " +  '"' + lca + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(output_path_write) then ("--output " +  '"' + output_path_write + '"') else ""}
  >>>
  parameter_meta {
    family: "Enable to search for a common FAMILY among hits for a read (takes priority over LCA search when a family exists for a taxonomic ID)."
    genus: "Enable to search for a common GENUS among hits for a read (takes priority over LCA search when a family exists for a taxonomic ID)."
    include_flag_trigger: "Include this flag to trigger debug-level logging."
    index: "Path to index built by mtsv-tree-build utility."
    path_mtsv_file: "Path to mtsv results file."
    lca: "Height at which the search will attempt to find a common ancestor among the hits for a read. [values: 0, 1, 2, 3]"
    threads: "Number of worker threads to spawn. [default: 4]"
    output_path_write: "Output path to write \"informativeness\" results."
  }
}