version 1.0

task Anviexportcollection {
  input {
    String? pan_or_profile_db
    String? collection_name
    File? output_file_prefix
    Boolean? list_collections
    File? include_unbinned
    String collection_txt
  }
  command <<<
    anvi_export_collection \
      ~{collection_txt} \
      ~{if defined(pan_or_profile_db) then ("--pan-or-profile-db " +  '"' + pan_or_profile_db + '"') else ""} \
      ~{if defined(collection_name) then ("--collection-name " +  '"' + collection_name + '"') else ""} \
      ~{if defined(output_file_prefix) then ("--output-file-prefix " +  '"' + output_file_prefix + '"') else ""} \
      ~{if (list_collections) then "--list-collections" else ""} \
      ~{if (include_unbinned) then "--include-unbinned" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    pan_or_profile_db: "Anvi'o pan or profile database (and even genes\\ndatabase in appropriate contexts). (default: None)"
    collection_name: "Collection name. (default: None)"
    output_file_prefix: "A prefix to be used while naming the output files (no\\nfile type extensions please; just a prefix). (default:\\nNone)"
    list_collections: "Show available collections and exit. (default: False)"
    include_unbinned: "When this flag is used, anvi'o will also store in the\\noutput file the items that do not appear in any of\\nyour bins. This new bin will be called\\n'UNBINNED_ITEMS_BIN'. Yes. The ugly name is\\nintentional. (default: False)"
    collection_txt: "🍺 More on `anvi-export-collection`:"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_prefix = "${in_output_file_prefix}"
    File out_include_unbinned = "${in_include_unbinned}"
  }
}