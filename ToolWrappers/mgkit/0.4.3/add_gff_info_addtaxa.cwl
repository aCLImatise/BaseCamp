class: CommandLineTool
id: add_gff_info_addtaxa.cwl
inputs:
- id: in_verbose
  doc: "-t, --gene-taxon-table TEXT  GIDs taxonomy table (e.g. gi_taxid_nucl.dmp.gz)\n\
    or a similar file where GENE/TAXON are tab\nseparated and one per line\n-a, --gene-attr\
    \ TEXT         In which attribute the GENEID in the table is\nstored (defaults\
    \ to *gene_id*)\n-f, --hdf-table TEXT         HDF5 file and table name to use\
    \ for taxon_id\nlookups. The format to pass is the file name,\ncolon and the table\
    \ file hf5:taxa-table. The\nindex in the table is the accession_id, while\nthe\
    \ column `taxon_id` stores the taxon_id as\nint\n-x, --taxonomy TEXT         \
    \ Taxonomy file - If given, both *taxon_name* and\n*lineage* attributes will be\
    \ set\n-d, --dictionary TEXT        A serialised dictionary, where the key is\
    \ the\nGENEID and the value is TAXONID. It can be in\njson or msgpack format (can\
    \ be a compressed\nfile) *Note*: the dictionary values takes\nprecedence over\
    \ the table files\n-e, --skip-no-taxon          If used, annotations with no taxon_id\
    \ won't be\noutputted\n-db, --taxon-db TEXT         DB used to add the taxonomic\
    \ information\n-c, --cache-table            If used, annotations are not preloaded,\
    \ but the\ntaxa table is cached, instead\n--progress                   Shows Progress\
    \ Bar\n--help                       Show this message and exit.\n"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- add-gff-info
- addtaxa
