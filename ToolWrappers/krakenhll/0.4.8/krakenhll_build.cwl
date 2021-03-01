class: CommandLineTool
id: krakenhll_build.cwl
inputs:
- id: in_download_taxonomy
  doc: Download NCBI taxonomic information
  type: boolean?
  inputBinding:
    prefix: --download-taxonomy
- id: in_download_library
  doc: "Download partial library (TYPE = one of \"refseq/bacteria\", \"refseq/archaea\"\
    , \"refseq/viral\").\nUse krakenhll-download for more options."
  type: string?
  inputBinding:
    prefix: --download-library
- id: in_add_to_library
  doc: Add FILE to library
  type: File?
  inputBinding:
    prefix: --add-to-library
- id: in_build
  doc: "Create DB from library (requires taxonomy d/l'ed and at\nleast one file in\
    \ library)"
  type: boolean?
  inputBinding:
    prefix: --build
- id: in_rebuild
  doc: "Create DB from library like --build, but remove\nexisting non-library/taxonomy\
    \ files before build"
  type: boolean?
  inputBinding:
    prefix: --rebuild
- id: in_clean
  doc: Remove unneeded files from a built database
  type: boolean?
  inputBinding:
    prefix: --clean
- id: in_shrink
  doc: Shrink an existing DB to have only NEW_CT k-mers
  type: string?
  inputBinding:
    prefix: --shrink
- id: in_standard
  doc: "Download and create default database, which contains complete genomes\nfor\
    \ archaea, bacteria and viruses from RefSeq, as well as viral strains\nfrom NCBI.\
    \ Specify --taxids-for-genomes and --taxids-for-sequences\nseparately, if desired."
  type: boolean?
  inputBinding:
    prefix: --standard
- id: in_db
  doc: Kraken DB directory (mandatory except for --help/--version)
  type: Directory?
  inputBinding:
    prefix: --db
- id: in_threads
  doc: '#                Number of threads (def: 1)'
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_new_db
  doc: "New Kraken DB name (shrink task only; mandatory\nfor shrink task)"
  type: string?
  inputBinding:
    prefix: --new-db
- id: in_km_er_len
  doc: "K-mer length in bp (build/shrink tasks only;\ndef: 31)"
  type: long?
  inputBinding:
    prefix: --kmer-len
- id: in_minimizer_len
  doc: "Minimizer length in bp (build/shrink tasks only;\ndef: 15)"
  type: long?
  inputBinding:
    prefix: --minimizer-len
- id: in_jellyfish_hash_size
  doc: "Pass a specific hash size argument to jellyfish\nwhen building database (build\
    \ task only)"
  type: long?
  inputBinding:
    prefix: --jellyfish-hash-size
- id: in_jellyfish_bin
  doc: Use STR as Jellyfish 1 binary.
  type: string?
  inputBinding:
    prefix: --jellyfish-bin
- id: in_max_db_size
  doc: "Shrink the DB before full build, making sure\ndatabase and index together\
    \ use <= SIZE gigabytes\n(build task only)"
  type: long?
  inputBinding:
    prefix: --max-db-size
- id: in_shrink_block_offset
  doc: "When shrinking, select the k-mer that is NUM\npositions from the end of a\
    \ block of k-mers\n(default: 1)"
  type: long?
  inputBinding:
    prefix: --shrink-block-offset
- id: in_lca_database
  doc: Build a LCA database (default yes)
  type: boolean?
  inputBinding:
    prefix: --lca-database
- id: in_no_lca_database
  doc: Do not build a LCA database
  type: boolean?
  inputBinding:
    prefix: --no-lca-database
- id: in_work_on_disk
  doc: "Perform most operations on disk rather than in\nRAM (will slow down build\
    \ in most cases)"
  type: boolean?
  inputBinding:
    prefix: --work-on-disk
- id: in_tax_ids_for_genomes
  doc: "Add taxonomy IDs (starting with 1 billion) for genomes.\nOnly works with 3-column\
    \ seqid2taxid map with third\ncolumn being the name"
  type: boolean?
  inputBinding:
    prefix: --taxids-for-genomes
- id: in_tax_ids_for_sequences
  doc: "Add taxonomy IDs for sequences, starting with 1 billion.\nCan be useful to\
    \ resolve classifications with multiple genomes\nfor one taxonomy ID."
  type: boolean?
  inputBinding:
    prefix: --taxids-for-sequences
- id: in_library_dir
  doc: Use DIR for reference sequences instead of DBDIR/library.
  type: string?
  inputBinding:
    prefix: --library-dir
- id: in_taxonomy_dir
  doc: Use DIR for taxonomy instead of DBDIR/taxonomy.
  type: string?
  inputBinding:
    prefix: --taxonomy-dir
- id: in_uid_database
  doc: Build a UID database (default no)
  type: boolean?
  inputBinding:
    prefix: --uid-database
- id: in_task
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- krakenhll-build
