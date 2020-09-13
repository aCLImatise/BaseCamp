version 1.0

task Anvimergebins {
  input {
    String? collection_name
    String? names__binnameslist
    String? name__bin
    Boolean? list_collections
    Boolean? list_bins
    String? p
    String below_dot
  }
  command <<<
    anvi_merge_bins \
      ~{below_dot} \
      ~{if defined(collection_name) then ("--collection-name " +  '"' + collection_name + '"') else ""} \
      ~{if defined(names__binnameslist) then ("-b " +  '"' + names__binnameslist + '"') else ""} \
      ~{if defined(name__bin) then ("-B " +  '"' + name__bin + '"') else ""} \
      ~{if (list_collections) then "--list-collections" else ""} \
      ~{if (list_bins) then "--list-bins" else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  parameter_meta {
    collection_name: "Collection name."
    names__binnameslist: "NAMES, --bin-names-list BIN NAMES\\nComma-separated list of bin names."
    name__bin: "NAME, --new-bin-name BIN NAME\\nThe new bin name."
    list_collections: "Show available collections and exit."
    list_bins: "List available bins in a collection and exit."
    p: ""
    below_dot: "-p PAN_OR_PROFILE_DB, --pan-or-profile-db PAN_OR_PROFILE_DB\\nAnvi'o pan or profile database (and even genes\\ndatabase in appropriate contexts)."
  }
  output {
    File out_stdout = stdout()
  }
}