class: CommandLineTool
id: kraken2_build.cwl
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
  doc: Download partial library (TYPE = one of "archaea", "bacteria", "plasmid", "viral",
    "human", "fungi", "plant", "protozoa", "nr", "nt", "env_nr", "env_nt", "UniVec",
    "UniVec_Core")
  type: string
  inputBinding:
    prefix: --download-library
- id: special
  doc: Download and build a special database (TYPE = one of "greengenes", "silva",
    "rdp")
  type: string
  inputBinding:
    prefix: --special
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
- id: clean
  doc: Remove unneeded files from a built database
  type: boolean
  inputBinding:
    prefix: --clean
- id: standard
  doc: Download and build default database
  type: boolean
  inputBinding:
    prefix: --standard
- id: db
  doc: Kraken 2 DB name (mandatory except for --help/--version)
  type: string
  inputBinding:
    prefix: --db
- id: threads
  doc: '#                Number of threads (def: 1)'
  type: boolean
  inputBinding:
    prefix: --threads
- id: km_er_len
  doc: 'K-mer length in bp/aa (build task only; def: 35 nt, 15 aa)'
  type: string
  inputBinding:
    prefix: --kmer-len
- id: minimizer_len
  doc: 'Minimizer length in bp/aa (build task only; def: 31 nt, 12 aa)'
  type: string
  inputBinding:
    prefix: --minimizer-len
- id: minimizer_spaces
  doc: 'Number of characters in minimizer that are ignored in comparisons (build task
    only; def: 7 nt, 0 aa)'
  type: string
  inputBinding:
    prefix: --minimizer-spaces
- id: protein
  doc: Build a protein database for translated search
  type: boolean
  inputBinding:
    prefix: --protein
- id: no_masking
  doc: Used with --standard/--download-library/ --add-to-library to avoid masking
    low-complexity sequences prior to building; masking requires dustmasker or segmasker
    to be installed in PATH, which some users might not have.
  type: boolean
  inputBinding:
    prefix: --no-masking
- id: max_db_size
  doc: Maximum number of bytes for Kraken 2 hash table; if the estimator determines
    more would normally be needed, the reference library will be downsampled to fit.
    (Used with --build/--standard/--special)
  type: string
  inputBinding:
    prefix: --max-db-size
- id: use_ftp
  doc: Use FTP for downloading instead of RSYNC; used with --download-library/--download-taxonomy/--standard.
  type: boolean
  inputBinding:
    prefix: --use-ftp
- id: skip_maps
  doc: Avoids downloading accession number to taxid maps, used with --download-taxonomy.
  type: boolean
  inputBinding:
    prefix: --skip-maps
outputs: []
cwlVersion: v1.1
baseCommand:
- kraken2-build
