version 1.0

task AddGffInfoAddtaxa {
  input {
    String? gene_tax_on_table
    String? gene_attr
    String? hdf_table
    String? taxonomy
    String? dictionary
    Boolean? skip_no_tax_on
    String? tax_on_db
    Boolean? cache_table
    Boolean? progress
    String? input_file
    String? output_file
  }
  command <<<
    add-gff-info addtaxa \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(gene_tax_on_table) then ("--gene-taxon-table " +  '"' + gene_tax_on_table + '"') else ""} \
      ~{if defined(gene_attr) then ("--gene-attr " +  '"' + gene_attr + '"') else ""} \
      ~{if defined(hdf_table) then ("--hdf-table " +  '"' + hdf_table + '"') else ""} \
      ~{if defined(taxonomy) then ("--taxonomy " +  '"' + taxonomy + '"') else ""} \
      ~{if defined(dictionary) then ("--dictionary " +  '"' + dictionary + '"') else ""} \
      ~{true="--skip-no-taxon" false="" skip_no_tax_on} \
      ~{if defined(tax_on_db) then ("--taxon-db " +  '"' + tax_on_db + '"') else ""} \
      ~{true="--cache-table" false="" cache_table} \
      ~{true="--progress" false="" progress}
  >>>
  parameter_meta {
    gene_tax_on_table: "GIDs taxonomy table (e.g. gi_taxid_nucl.dmp.gz) or a similar file where GENE/TAXON are tab separated and one per line"
    gene_attr: "In which attribute the GENEID in the table is stored (defaults to *gene_id*)"
    hdf_table: "HDF5 file and table name to use for taxon_id lookups. The format to pass is the file name, colon and the table file hf5:taxa-table. The index in the table is the accession_id, while the column `taxon_id` stores the taxon_id as int"
    taxonomy: "Taxonomy file - If given, both *taxon_name* and *lineage* attributes will be set"
    dictionary: "A serialised dictionary, where the key is the GENEID and the value is TAXONID. It can be in json or msgpack format (can be a compressed file) *Note*: the dictionary values takes precedence over the table files"
    skip_no_tax_on: "If used, annotations with no taxon_id won't be outputted"
    tax_on_db: "DB used to add the taxonomic information"
    cache_table: "If used, annotations are not preloaded, but the taxa table is cached, instead"
    progress: "Shows Progress Bar"
    input_file: ""
    output_file: ""
  }
}