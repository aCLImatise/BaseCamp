version 1.0

task AddgffinfoAddtaxa {
  input {
    File? gene_tax_on_table
    String? gene_attr
    Int? hdf_table
    File? taxonomy
    File? dictionary
    Boolean? skip_no_tax_on
    Boolean? cache_table
    Boolean? progress
    File options
    String outputted
  }
  command <<<
    add_gff_info addtaxa \
      ~{options} \
      ~{outputted} \
      ~{if defined(gene_tax_on_table) then ("--gene-taxon-table " +  '"' + gene_tax_on_table + '"') else ""} \
      ~{if defined(gene_attr) then ("--gene-attr " +  '"' + gene_attr + '"') else ""} \
      ~{if defined(hdf_table) then ("--hdf-table " +  '"' + hdf_table + '"') else ""} \
      ~{if defined(taxonomy) then ("--taxonomy " +  '"' + taxonomy + '"') else ""} \
      ~{if defined(dictionary) then ("--dictionary " +  '"' + dictionary + '"') else ""} \
      ~{if (skip_no_tax_on) then "--skip-no-taxon" else ""} \
      ~{if (cache_table) then "--cache-table" else ""} \
      ~{if (progress) then "--progress" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gene_tax_on_table: "GIDs taxonomy table (e.g. gi_taxid_nucl.dmp.gz)\\nor a similar file where GENE/TAXON are tab\\nseparated and one per line"
    gene_attr: "In which attribute the GENEID in the table is\\nstored (defaults to *gene_id*)"
    hdf_table: "HDF5 file and table name to use for taxon_id\\nlookups. The format to pass is the file name,\\ncolon and the table file hf5:taxa-table. The\\nindex in the table is the accession_id, while\\nthe column `taxon_id` stores the taxon_id as\\nint"
    taxonomy: "Taxonomy file - If given, both *taxon_name* and\\n*lineage* attributes will be set"
    dictionary: "A serialised dictionary, where the key is the\\nGENEID and the value is TAXONID. It can be in\\njson or msgpack format (can be a compressed\\nfile) *Note*: the dictionary values takes\\nprecedence over the table files"
    skip_no_tax_on: "If used, annotations with no taxon_id won't be"
    cache_table: "If used, annotations are not preloaded, but the\\ntaxa table is cached, instead"
    progress: "Shows Progress Bar"
    options: "Options:"
    outputted: "-db, --taxon-db TEXT         DB used to add the taxonomic information"
  }
  output {
    File out_stdout = stdout()
  }
}