class: CommandLineTool
id: kraken_build.cwl
inputs:
- id: in_download_taxonomy
  doc: Download NCBI taxonomic information
  type: boolean
  inputBinding:
    prefix: --download-taxonomy
- id: in_download_library
  doc: "Download partial library\n(TYPE = one of \"archaea\", \"bacteria\", \"plasmid\"\
    ,\n\"viral\", \"human\")"
  type: string
  inputBinding:
    prefix: --download-library
- id: in_add_to_library
  doc: Add FILE to library
  type: File
  inputBinding:
    prefix: --add-to-library
- id: in_build
  doc: "Create DB from library\n(requires taxonomy d/l'ed and at least one file\n\
    in library)"
  type: boolean
  inputBinding:
    prefix: --build
- id: in_rebuild
  doc: "Create DB from library like --build, but remove\nexisting non-library/taxonomy\
    \ files before build"
  type: boolean
  inputBinding:
    prefix: --rebuild
- id: in_clean
  doc: Remove unneeded files from a built database
  type: boolean
  inputBinding:
    prefix: --clean
- id: in_shrink
  doc: Shrink an existing DB to have only NEW_CT k-mers
  type: string
  inputBinding:
    prefix: --shrink
- id: in_standard
  doc: Download and create default database
  type: boolean
  inputBinding:
    prefix: --standard
- id: in_upgrade
  doc: "Upgrade an existing older database to use scrambled\nminimizer ordering (see\
    \ README for details)"
  type: boolean
  inputBinding:
    prefix: --upgrade
- id: in_db
  doc: "Kraken DB/library name (mandatory except for\n--help/--version)"
  type: string
  inputBinding:
    prefix: --db
- id: in_threads
  doc: '#                Number of threads (def: 1)'
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_new_db
  doc: "New Kraken DB name (shrink task only; mandatory\nfor shrink task)"
  type: string
  inputBinding:
    prefix: --new-db
- id: in_km_er_len
  doc: "K-mer length in bp (build/shrink tasks only;\ndef: 31)"
  type: long
  inputBinding:
    prefix: --kmer-len
- id: in_minimizer_len
  doc: "Minimizer length in bp (build/shrink tasks only;\ndef: 15)"
  type: long
  inputBinding:
    prefix: --minimizer-len
- id: in_jellyfish_hash_size
  doc: "Pass a specific hash size argument to jellyfish\nwhen building database (build\
    \ task only)"
  type: long
  inputBinding:
    prefix: --jellyfish-hash-size
- id: in_max_db_size
  doc: "Shrink the DB before full build, making sure\ndatabase and index together\
    \ use <= SIZE gigabytes\n(build task only)"
  type: long
  inputBinding:
    prefix: --max-db-size
- id: in_use_wget
  doc: "Use wget for downloading instead of RSYNC; used with\n--download-library/--standard"
  type: boolean
  inputBinding:
    prefix: --use-wget
- id: in_shrink_block_offset
  doc: "When shrinking, select the k-mer that is NUM\npositions from the end of a\
    \ block of k-mers\n(default: 1)"
  type: long
  inputBinding:
    prefix: --shrink-block-offset
- id: in_work_on_disk
  doc: "Perform most operations on disk rather than in\nRAM (will slow down build\
    \ in most cases)\n"
  type: boolean
  inputBinding:
    prefix: --work-on-disk
- id: in_task
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- kraken-build
