class: CommandLineTool
id: add_gff_info_addtaxa.cwl
inputs:
- id: in_gene_tax_on_table
  doc: "GIDs taxonomy table (e.g. gi_taxid_nucl.dmp.gz)\nor a similar file where GENE/TAXON\
    \ are tab\nseparated and one per line"
  type: File?
  inputBinding:
    prefix: --gene-taxon-table
- id: in_gene_attr
  doc: "In which attribute the GENEID in the table is\nstored (defaults to *gene_id*)"
  type: string?
  inputBinding:
    prefix: --gene-attr
- id: in_hdf_table
  doc: "HDF5 file and table name to use for taxon_id\nlookups. The format to pass\
    \ is the file name,\ncolon and the table file hf5:taxa-table. The\nindex in the\
    \ table is the accession_id, while\nthe column `taxon_id` stores the taxon_id\
    \ as\nint"
  type: long?
  inputBinding:
    prefix: --hdf-table
- id: in_taxonomy
  doc: "Taxonomy file - If given, both *taxon_name* and\n*lineage* attributes will\
    \ be set"
  type: File?
  inputBinding:
    prefix: --taxonomy
- id: in_dictionary
  doc: "A serialised dictionary, where the key is the\nGENEID and the value is TAXONID.\
    \ It can be in\njson or msgpack format (can be a compressed\nfile) *Note*: the\
    \ dictionary values takes\nprecedence over the table files"
  type: File?
  inputBinding:
    prefix: --dictionary
- id: in_skip_no_tax_on
  doc: If used, annotations with no taxon_id won't be
  type: boolean?
  inputBinding:
    prefix: --skip-no-taxon
- id: in_cache_table
  doc: "If used, annotations are not preloaded, but the\ntaxa table is cached, instead"
  type: boolean?
  inputBinding:
    prefix: --cache-table
- id: in_progress
  doc: Shows Progress Bar
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_file
  doc: 'Options:'
  type: File
  inputBinding:
    position: 0
- id: in_outputted
  doc: -db, --taxon-db TEXT         DB used to add the taxonomic information
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- add-gff-info
- addtaxa
