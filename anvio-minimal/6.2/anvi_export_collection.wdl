version 1.0

task AnviExportCollection {
  input {
    String? pan_or_profile_db
    String? collection_name
    File? output_file_prefix
    Boolean? list_collections
    Boolean? include_unbinned
  }
  command <<<
    anvi-export-collection \
      ~{if defined(pan_or_profile_db) then ("--pan-or-profile-db " +  '"' + pan_or_profile_db + '"') else ""} \
      ~{if defined(collection_name) then ("--collection-name " +  '"' + collection_name + '"') else ""} \
      ~{if defined(output_file_prefix) then ("--output-file-prefix " +  '"' + output_file_prefix + '"') else ""} \
      ~{true="--list-collections" false="" list_collections} \
      ~{true="--include-unbinned" false="" include_unbinned}
  >>>
  parameter_meta {
    pan_or_profile_db: "Anvi'o pan or profile database (and even genes database in appropriate contexts)."
    collection_name: "Collection name."
    output_file_prefix: "A prefix to be used while naming the output files (no file type extensions please; just a prefix)."
    list_collections: "Show available collections and exit."
    include_unbinned: "When this flag is used, anvi'o will also store in the output file the items that do not appear in any of your bins. This new bin will be called 'UNBINNED_ITEMS_BIN'. Yes. The ugly name is intentional."
  }
}