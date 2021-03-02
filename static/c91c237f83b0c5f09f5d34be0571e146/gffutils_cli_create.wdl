version 1.0

task GffutilscliCreate {
  input {
    File? database_create_default
    Boolean? force
    Boolean? quiet
    String? merge
    Boolean? disable_infer_genes
    Boolean? disable_infer_transcripts
  }
  command <<<
    gffutils_cli create \
      ~{if defined(database_create_default) then ("--output " +  '"' + database_create_default + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(merge) then ("--merge " +  '"' + merge + '"') else ""} \
      ~{if (disable_infer_genes) then "--disable-infer-genes" else ""} \
      ~{if (disable_infer_transcripts) then "--disable-infer-transcripts" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    database_create_default: "Database to create. Default is to append \\\".db\\\" to the\\nend of the input filename (default: -)"
    force: "Overwrite an existing database (default: False)"
    quiet: "Suppress the reporting of timing information when\\ncreating the database (default: False)"
    merge: "Merge strategy to be used if if duplicate IDs are\\nfound. (default: 'merge')"
    disable_infer_genes: "Disable inferring of gene extents for GTF files. Use\\nthis if your GTF file already has \\\"gene\\\" featuretypes\\n(default: False)"
    disable_infer_transcripts: "Disable inferring of transcript extents for GTF files.\\nUse this if your GTF file already has \\\"transcript\\\"\\nfeaturetypes (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}