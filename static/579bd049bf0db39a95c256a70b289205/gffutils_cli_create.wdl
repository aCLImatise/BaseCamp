version 1.0

task GffutilsCliCreate {
  input {
    String? database_create_default
    Boolean? force
    Boolean? quiet
    String? merge
    Boolean? disable_infer_genes
    Boolean? disable_infer_transcripts
    File filename
  }
  command <<<
    gffutils-cli create \
      ~{filename} \
      ~{if defined(database_create_default) then ("--output " +  '"' + database_create_default + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(merge) then ("--merge " +  '"' + merge + '"') else ""} \
      ~{true="--disable-infer-genes" false="" disable_infer_genes} \
      ~{true="--disable-infer-transcripts" false="" disable_infer_transcripts}
  >>>
  parameter_meta {
    database_create_default: "Database to create. Default is to append \".db\" to the end of the input filename (default: -)"
    force: "Overwrite an existing database (default: False)"
    quiet: "Suppress the reporting of timing information when creating the database (default: False)"
    merge: "Merge strategy to be used if if duplicate IDs are found. (default: 'merge')"
    disable_infer_genes: "Disable inferring of gene extents for GTF files. Use this if your GTF file already has \"gene\" featuretypes (default: False)"
    disable_infer_transcripts: "Disable inferring of transcript extents for GTF files. Use this if your GTF file already has \"transcript\" featuretypes (default: False)"
    filename: "GFF or GTF file to use"
  }
}