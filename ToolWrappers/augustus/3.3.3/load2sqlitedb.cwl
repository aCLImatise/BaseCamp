class: CommandLineTool
id: load2sqlitedb.cwl
inputs:
- id: in_chunksize
  doc: "this option is only relevant when loading a sequence file\nthe sequences in\
    \ the input genome are split into chunks of this size so\nthat subsequent retrievals\
    \ of small sequence ranges do not require to read\nthe complete - potentially\
    \ much longer - chromosome. (<= 1000000, default 50000)"
  type: boolean
  inputBinding:
    prefix: --chunksize
- id: in_no_idx
  doc: "use this flag to suppress the building of indices on the database tables.\n\
    If you are going to load several genomes and/or hint files in a row, this option\n\
    is recommended to speed up the loading. But make sure to build indices with\n\
    --makeIdx after all genomes/hints are loaded. Otherwise, data retrieval operations\n\
    can be very slow."
  type: boolean
  inputBinding:
    prefix: --noIdx
- id: in_make_idx
  doc: "use this flag to build the indices on the database tables after loading several\n\
    genomes and/or hint files with --noIdx. Only call this once for all species, e.g.\n\
    load2sqlitedb --makeIdx --dbaccess=database.db"
  type: boolean
  inputBinding:
    prefix: --makeIdx
- id: in_clean
  doc: "makes a clean load deleting existing hints/genome for the species from the\
    \ database.\nWhen called with a gff file, only the hints for the species are delete,\
    \ but not the genome.\nWhen called with a fasta file, both hints and genome for\
    \ the species are deleted."
  type: boolean
  inputBinding:
    prefix: --clean
- id: in_dbaccess
  doc: ''
  type: string
  inputBinding:
    prefix: --dbaccess
- id: in_species
  doc: ''
  type: string
  inputBinding:
    prefix: --species
- id: in_parameters
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fast_a_file
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
- load2sqlitedb
