class: CommandLineTool
id: add_gff_info_addtaxa.cwl
inputs:
- id: gene_tax_on_table
  doc: GIDs taxonomy table (e.g. gi_taxid_nucl.dmp.gz) or a similar file where GENE/TAXON
    are tab separated and one per line
  type: string
  inputBinding:
    prefix: --gene-taxon-table
- id: gene_attr
  doc: In which attribute the GENEID in the table is stored (defaults to *gene_id*)
  type: string
  inputBinding:
    prefix: --gene-attr
- id: hdf_table
  doc: HDF5 file and table name to use for taxon_id lookups. The format to pass is
    the file name, colon and the table file hf5:taxa-table. The index in the table
    is the accession_id, while the column `taxon_id` stores the taxon_id as int
  type: string
  inputBinding:
    prefix: --hdf-table
- id: taxonomy
  doc: Taxonomy file - If given, both *taxon_name* and *lineage* attributes will be
    set
  type: string
  inputBinding:
    prefix: --taxonomy
- id: dictionary
  doc: 'A serialised dictionary, where the key is the GENEID and the value is TAXONID.
    It can be in json or msgpack format (can be a compressed file) *Note*: the dictionary
    values takes precedence over the table files'
  type: string
  inputBinding:
    prefix: --dictionary
- id: skip_no_tax_on
  doc: If used, annotations with no taxon_id won't be outputted
  type: boolean
  inputBinding:
    prefix: --skip-no-taxon
- id: tax_on_db
  doc: DB used to add the taxonomic information
  type: string
  inputBinding:
    prefix: --taxon-db
- id: cache_table
  doc: If used, annotations are not preloaded, but the taxa table is cached, instead
  type: boolean
  inputBinding:
    prefix: --cache-table
- id: progress
  doc: Shows Progress Bar
  type: boolean
  inputBinding:
    prefix: --progress
outputs: []
cwlVersion: v1.1
baseCommand:
- add-gff-info
- addtaxa
