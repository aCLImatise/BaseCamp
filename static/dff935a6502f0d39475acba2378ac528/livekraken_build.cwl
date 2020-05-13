class: CommandLineTool
id: livekraken_build.cwl
inputs:
- id: task
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: download_taxonomy
  doc: Download NCBI taxonomic information
  type: boolean
  inputBinding:
    prefix: --download-taxonomy
- id: download_library
  doc: Download partial library (TYPE = one of "bacteria", "plasmids",  "viruses",
    "human")
  type: string
  inputBinding:
    prefix: --download-library
- id: add_to_library
  doc: Add FILE to library
  type: File
  inputBinding:
    prefix: --add-to-library
- id: build
  doc: Create DB from library (requires taxonomy d/l'ed and at least one file in library)
  type: boolean
  inputBinding:
    prefix: --build
- id: rebuild
  doc: Create DB from library like --build, but remove existing non-library/taxonomy
    files before build
  type: boolean
  inputBinding:
    prefix: --rebuild
- id: clean
  doc: Remove unneeded files from a built database
  type: boolean
  inputBinding:
    prefix: --clean
- id: shrink
  doc: Shrink an existing DB to have only NEW_CT k-mers
  type: string
  inputBinding:
    prefix: --shrink
- id: standard
  doc: Download and create default database
  type: boolean
  inputBinding:
    prefix: --standard
- id: upgrade
  doc: Upgrade an existing older database to use scrambled minimizer ordering (see
    README for details)
  type: boolean
  inputBinding:
    prefix: --upgrade
- id: db
  doc: Kraken DB/library name (mandatory except for --help/--version)
  type: string
  inputBinding:
    prefix: --db
- id: threads
  doc: '#                Number of threads (def: 1)'
  type: boolean
  inputBinding:
    prefix: --threads
- id: new_db
  doc: New Kraken DB name (shrink task only; mandatory for shrink task)
  type: string
  inputBinding:
    prefix: --new-db
- id: km_er_len
  doc: 'K-mer length in bp (build/shrink tasks only; def: 31)'
  type: string
  inputBinding:
    prefix: --kmer-len
- id: minimizer_len
  doc: 'Minimizer length in bp (build/shrink tasks only; def: 15)'
  type: string
  inputBinding:
    prefix: --minimizer-len
- id: jellyfish_hash_size
  doc: Pass a specific hash size argument to jellyfish when building database (build
    task only)
  type: string
  inputBinding:
    prefix: --jellyfish-hash-size
- id: max_db_size
  doc: Shrink the DB before full build, making sure database and index together use
    <= SIZE gigabytes (build task only)
  type: long
  inputBinding:
    prefix: --max-db-size
- id: shrink_block_offset
  doc: 'When shrinking, select the k-mer that is NUM positions from the end of a block
    of k-mers (default: 1)'
  type: string
  inputBinding:
    prefix: --shrink-block-offset
- id: work_on_disk
  doc: Perform most operations on disk rather than in RAM (will slow down build in
    most cases)
  type: boolean
  inputBinding:
    prefix: --work-on-disk
outputs: []
cwlVersion: v1.1
baseCommand:
- livekraken-build
