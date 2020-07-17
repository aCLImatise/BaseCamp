version 1.0

task AnviMergeBins {
  input {
    String? pan_or_profile_db
    String? collection_name
    String? names__binnameslist
    String? name__newbinname
    Boolean? list_collections
    Boolean? list_bins
  }
  command <<<
    anvi-merge-bins \
      ~{if defined(pan_or_profile_db) then ("--pan-or-profile-db " +  '"' + pan_or_profile_db + '"') else ""} \
      ~{if defined(collection_name) then ("--collection-name " +  '"' + collection_name + '"') else ""} \
      ~{if defined(names__binnameslist) then ("-b " +  '"' + names__binnameslist + '"') else ""} \
      ~{if defined(name__newbinname) then ("-B " +  '"' + name__newbinname + '"') else ""} \
      ~{true="--list-collections" false="" list_collections} \
      ~{true="--list-bins" false="" list_bins}
  >>>
  parameter_meta {
    pan_or_profile_db: "Anvi'o pan or profile database (and even genes database in appropriate contexts)."
    collection_name: "Collection name."
    names__binnameslist: "NAMES, --bin-names-list BIN NAMES Comma-separated list of bin names."
    name__newbinname: "NAME, --new-bin-name BIN NAME The new bin name."
    list_collections: "Show available collections and exit."
    list_bins: "List available bins in a collection and exit."
  }
}