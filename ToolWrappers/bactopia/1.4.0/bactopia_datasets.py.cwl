class: CommandLineTool
id: bactopia_datasets.py.cwl
inputs:
- id: in_ariba
  doc: "Setup Ariba datasets for a given reference or a list of\nreferences in a text\
    \ file. (Default: card,vfdb_core)"
  type: File
  inputBinding:
    prefix: --ariba
- id: in_species
  doc: "Download available MLST schemas and completed genomes for\na given species\
    \ or a list of species in a text file."
  type: File
  inputBinding:
    prefix: --species
- id: in_skip_pro_kk_a
  doc: Skip creation of a Prokka formatted fasta for each species
  type: boolean
  inputBinding:
    prefix: --skip_prokka
- id: in_include_genus
  doc: Include all genus members in the Prokka proteins FASTA
  type: boolean
  inputBinding:
    prefix: --include_genus
- id: in_limit
  doc: "If available completed genomes exceeds a given limit, a\nrandom subsample\
    \ will be taken."
  type: long
  inputBinding:
    prefix: --limit
- id: in_accessions
  doc: A list of RefSeq accessions to download.
  type: string
  inputBinding:
    prefix: --accessions
- id: in_identity
  doc: 'CD-HIT (-c) sequence identity threshold. (Default: 0.9)'
  type: double
  inputBinding:
    prefix: --identity
- id: in_overlap
  doc: 'CD-HIT (-s) length difference cutoff. (Default: 0.8)'
  type: double
  inputBinding:
    prefix: --overlap
- id: in_max_memory
  doc: 'CD-HIT (-M) memory limit (in MB). (Default: unlimited'
  type: long
  inputBinding:
    prefix: --max_memory
- id: in_fast_cluster
  doc: "Use CD-HIT's (-g 0) fast clustering algorithm, instead of\nthe accurate but\
    \ slow algorithm."
  type: boolean
  inputBinding:
    prefix: --fast_cluster
- id: in_skip_min_mer
  doc: "Skip download of pre-computed minmer datasets (mash,\nsourmash)"
  type: boolean
  inputBinding:
    prefix: --skip_minmer
- id: in_skip_pls_db
  doc: Skip download of pre-computed PLSDB datbases (blast, mash)
  type: boolean
  inputBinding:
    prefix: --skip_plsdb
- id: in_cpus
  doc: 'Number of cpus to use. (Default: 1)'
  type: long
  inputBinding:
    prefix: --cpus
- id: in_clear_cache
  doc: Remove any existing cache.
  type: boolean
  inputBinding:
    prefix: --clear_cache
- id: in_force
  doc: Forcibly overwrite existing datasets.
  type: boolean
  inputBinding:
    prefix: --force
- id: in_force_ariba
  doc: Forcibly overwrite existing Ariba datasets.
  type: boolean
  inputBinding:
    prefix: --force_ariba
- id: in_force_mlst
  doc: Forcibly overwrite existing MLST datasets.
  type: boolean
  inputBinding:
    prefix: --force_mlst
- id: in_force_pro_kk_a
  doc: Forcibly overwrite existing Prokka datasets.
  type: boolean
  inputBinding:
    prefix: --force_prokka
- id: in_force_min_mer
  doc: Forcibly overwrite existing minmer datasets.
  type: boolean
  inputBinding:
    prefix: --force_minmer
- id: in_force_pls_db
  doc: Forcibly overwrite existing PLSDB datasets.
  type: boolean
  inputBinding:
    prefix: --force_plsdb
- id: in_keep_files
  doc: Keep all downloaded and intermediate files.
  type: boolean
  inputBinding:
    prefix: --keep_files
- id: in_list_datasets
  doc: "List Ariba reference datasets and MLST schemas available\nfor setup."
  type: boolean
  inputBinding:
    prefix: --list_datasets
- id: in_depends
  doc: Verify dependencies are installed.
  type: boolean
  inputBinding:
    prefix: --depends
- id: in_verbose
  doc: Print debug related text.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_silent
  doc: Only critical errors will be printed.
  type: boolean
  inputBinding:
    prefix: --silent
- id: in_pub_mlst
  doc: Bactopia config file with PubMLST schema mappings for
  type: string
  inputBinding:
    position: 0
- id: in_ariba_dot
  doc: OUTPUT_DIRECTORY  Directory to write output.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bactopia-datasets.py
