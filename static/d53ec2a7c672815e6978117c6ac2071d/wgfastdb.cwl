class: CommandLineTool
id: wgfastdb.cwl
inputs:
- id: in_log
  doc: 'Set log file path (default: ./wgfastdb.log)'
  type: File
  inputBinding:
    prefix: --log
- id: in_no_update
  doc: "Do not sync your collection with the latest assembly\nversions (default: False)"
  type: boolean
  inputBinding:
    prefix: --no_update
- id: in_no_assembly_update
  doc: "Do not download the latest assembly summary and\ntaxonomy dump and use your\
    \ local copies. (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --no_assembly_update
- id: in_download_only
  doc: 'Run only the download step. (default: False)'
  type: boolean
  inputBinding:
    prefix: --download_only
- id: in_species
  doc: "List of species to build database. The species name\nmust match exactly a\
    \ species directory at\nftp://ftp.ncbi.nlm.nih.gov/genomes/genbank/bacteria/\n\
    (default: None)"
  type: string[]
  inputBinding:
    prefix: --species
- id: in_config
  doc: "Path to config table (.csv). Table MUST include a\n\"species\" column and\
    \ may include a column \"reference\"\nfor reference genomes. Curation parameters\
    \ can also be\nset in the table using column headers: \"unknowns\",\n\"contigs\"\
    , \"assembly_size\", and \"distance\". If a\nparameter cell is left blank it will\
    \ be replaced with\nthe default value or a value passed from the command\nline\
    \ (default: None)"
  type: File
  inputBinding:
    prefix: --config
- id: in_curate_only
  doc: 'Run only the curate step (default: False)'
  type: boolean
  inputBinding:
    prefix: --curate_only
- id: in_unknowns
  doc: "Maximum number of unknown bases (not A, T, C, G) for\ncuration. If more than\
    \ one value is passed, the list\nmust be the same length as the number of species.\n\
    Otherwise the same value is applied to all species.\n(default: [200])"
  type: string[]
  inputBinding:
    prefix: --unknowns
- id: in_contigs
  doc: "Acceptable deviations from median number of contigs\nfor curation. If more\
    \ than one value is passed, the\nlist must be the same length as the number of\
    \ species.\nOtherwise the same value is applied to all species\n(default: [3.0])"
  type: string[]
  inputBinding:
    prefix: --contigs
- id: in_assembly_size
  doc: "Acceptable devations from median assembly size for\ncuration. If more than\
    \ one value is passed, the list\nmust be the same length as the number of species.\n\
    Otherwise the same value is applied to all species\n(default: [3.0])"
  type: long[]
  inputBinding:
    prefix: --assembly_size
- id: in_distance
  doc: "Acceptable deviations from median MASH distances for\ncuration. If more than\
    \ one value is passed, the list\nmust be the same length as the number of species.\n\
    Otherwise the same value is applied to all species\n(default: [3.0])"
  type: string[]
  inputBinding:
    prefix: --distance
- id: in_reference
  doc: "Define which genome to use as reference by providing\naccession number (GCA_XXXXXXXXX).\
    \ This list should be\nthe same length as the number of species. This is\nREQUIRED\
    \ from the command line or in the config file.\n(default: None)\n"
  type: string[]
  inputBinding:
    prefix: --reference
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- wgfastdb
