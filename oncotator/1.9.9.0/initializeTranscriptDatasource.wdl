version 1.0

task InitializeTranscriptDatasource {
  input {
    String? name
    String? filter
    File? protein_map_file
    String gtf_files
    String fast_a_files
    String output_dir
    String genome_build
    String version
  }
  command <<<
    initializeTranscriptDatasource \
      ~{gtf_files} \
      ~{fast_a_files} \
      ~{output_dir} \
      ~{genome_build} \
      ~{version} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if defined(protein_map_file) then ("--protein-map-file " +  '"' + protein_map_file + '"') else ""}
  >>>
  parameter_meta {
    name: "name of the datasource.  For example, ensembl.  Or GENCODE"
    filter: "Filter to use from ['dummy', 'basic'].  For non-GENCODE ENSEMBL, this should be set to dummy. default: basic"
    protein_map_file: "Protein mapping file (a tsv with transcript ID to protein ID .... Typically, for ENSEMBL or GENCODE a file with ENST to ENSP mappings).\\nThis utility can require a lot of RAM (~4GB for gencode.v18).\\nCreation of a gencode datasource can require as much as two hours.\\nNOTE about Filter:\\nPlease see the filter option.  Since this defaults to a GENCODE specific filter, which can be problematic for\\nENSEMBL-only.\\nUse \\\"dummy\\\" for ENSEMBL-only datasources\\nUse \\\"basic\\\" for GENCODE datasources, unless you want to annotate using every available transcript.\\nNote that all transcripts are present in a datasource, so if a filter change is needed to a datasource that has\\nalready been generated, you can edit the config file, instead of re-creating the entire datasource.\\nIF you wish to have HGVS support, you must provide the protein mapping file (--protein-map-file).\\n"
    gtf_files: "Location of the gtf files.  Multiple files can be specified as a comma separated list (e.g. file1,file2) without spaces "
    fast_a_files: "Location of the fasta file (cDNA) associated with the gtf files.  Multiple files can be specified as a comma separated list (e.g. file1,file2) without spaces"
    output_dir: "Datasource output location.  This directory should NOT already exist."
    genome_build: "Genome build -- this must be specified correctly by the user.  For example, hg19."
    version: "version.  For example, v18"
  }
  output {
    File out_stdout = stdout()
  }
}