class: CommandLineTool
id: krakenhll_build.cwl
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
  doc: Download partial library (TYPE = one of "refseq/bacteria", "refseq/archaea",
    "refseq/viral").  Use krakenhll-download for more options.
  type: string
  inputBinding:
    prefix: --download-library
- id: add_to_library
  doc: Add FILE to library
  type: File
  inputBinding:
    prefix: --add-to-library
- id: build
  doc: Create DB from library (requires taxonomy d/l'ed and at  least one file in
    library)
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
  doc: Download and create default database, which contains complete genomes  for
    archaea, bacteria and viruses from RefSeq, as well as viral strains  from NCBI.
    Specify --taxids-for-genomes and --taxids-for-sequences separately, if desired.
  type: boolean
  inputBinding:
    prefix: --standard
- id: db
  doc: Kraken DB directory (mandatory except for --help/--version)
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
- id: jellyfish_bin
  doc: Use STR as Jellyfish 1 binary.
  type: string
  inputBinding:
    prefix: --jellyfish-bin
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
- id: lca_database
  doc: Build a LCA database (default yes)
  type: boolean
  inputBinding:
    prefix: --lca-database
- id: no_lca_database
  doc: Do not build a LCA database
  type: boolean
  inputBinding:
    prefix: --no-lca-database
- id: work_on_disk
  doc: Perform most operations on disk rather than in RAM (will slow down build in
    most cases)
  type: boolean
  inputBinding:
    prefix: --work-on-disk
- id: tax_ids_for_genomes
  doc: Add taxonomy IDs (starting with 1 billion) for genomes. Only works with 3-column
    seqid2taxid map with third  column being the name
  type: boolean
  inputBinding:
    prefix: --taxids-for-genomes
- id: tax_ids_for_sequences
  doc: Add taxonomy IDs for sequences, starting with 1 billion. Can be useful to resolve
    classifications with multiple genomes for one taxonomy ID.
  type: boolean
  inputBinding:
    prefix: --taxids-for-sequences
- id: library_dir
  doc: Use DIR for reference sequences instead of DBDIR/library.
  type: string
  inputBinding:
    prefix: --library-dir
- id: taxonomy_dir
  doc: Use DIR for taxonomy instead of DBDIR/taxonomy.
  type: string
  inputBinding:
    prefix: --taxonomy-dir
- id: uid_database
  doc: Build a UID database (default no)
  type: boolean
  inputBinding:
    prefix: --uid-database
outputs: []
cwlVersion: v1.1
baseCommand:
- krakenhll-build
