version 1.0

task Anvimergebins {
  input {
    String? collection_name
    String? names__namescommaseparated
    String? name_newbinname_bin
    Boolean? list_collections
    Boolean? list_bins
    String? p
    String below_dot
  }
  command <<<
    anvi_merge_bins \
      ~{below_dot} \
      ~{if defined(collection_name) then ("--collection-name " +  '"' + collection_name + '"') else ""} \
      ~{if defined(names__namescommaseparated) then ("-b " +  '"' + names__namescommaseparated + '"') else ""} \
      ~{if defined(name_newbinname_bin) then ("-B " +  '"' + name_newbinname_bin + '"') else ""} \
      ~{if (list_collections) then "--list-collections" else ""} \
      ~{if (list_bins) then "--list-bins" else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    collection_name: "Collection name. (default: None)"
    names__namescommaseparated: "NAMES, --bin-names-list BIN NAMES\\nComma-separated list of bin names. (default: None)"
    name_newbinname_bin: "NAME, --new-bin-name BIN NAME\\nThe new bin name. (default: None)"
    list_collections: "Show available collections and exit. (default: False)"
    list_bins: "List available bins in a collection and exit.\\n(default: False)"
    p: ""
    below_dot: "-p PAN_OR_PROFILE_DB, --pan-or-profile-db PAN_OR_PROFILE_DB\\nAnvi'o pan or profile database (and even genes\\ndatabase in appropriate contexts). (default: None)"
  }
  output {
    File out_stdout = stdout()
  }
}