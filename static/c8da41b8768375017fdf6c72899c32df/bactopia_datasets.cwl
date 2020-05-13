class: CommandLineTool
id: bactopia_datasets.py.cwl
inputs:
- id: output_directory
  doc: Directory to write output.
  type: string
  inputBinding:
    position: 0
- id: ariba
  doc: 'Setup Ariba datasets for a given reference or a list of references in a text
    file. (Default: card,vfdb_core)'
  type: string
  inputBinding:
    prefix: --ariba
- id: species
  doc: Download available MLST schemas and completed genomes for a given species or
    a list of species in a text file.
  type: string
  inputBinding:
    prefix: --species
- id: skip_pro_kk_a
  doc: Skip creation of a Prokka formatted fasta for each species
  type: boolean
  inputBinding:
    prefix: --skip_prokka
- id: include_genus
  doc: Include all genus members in the Prokka proteins FASTA
  type: boolean
  inputBinding:
    prefix: --include_genus
- id: identity
  doc: 'CD-HIT (-c) sequence identity threshold. (Default: 0.9)'
  type: double
  inputBinding:
    prefix: --identity
- id: overlap
  doc: 'CD-HIT (-s) length difference cutoff. (Default: 0.8)'
  type: double
  inputBinding:
    prefix: --overlap
- id: max_memory
  doc: 'CD-HIT (-M) memory limit (in MB). (Default: unlimited'
  type: long
  inputBinding:
    prefix: --max_memory
- id: fast_cluster
  doc: Use CD-HIT's (-g 0) fast clustering algorithm, instead of the accurate but
    slow algorithm.
  type: boolean
  inputBinding:
    prefix: --fast_cluster
- id: skip_min_mer
  doc: Skip download of pre-computed minmer datasets (mash, sourmash)
  type: boolean
  inputBinding:
    prefix: --skip_minmer
- id: skip_pls_db
  doc: Skip download of pre-computed PLSDB datbases (blast, mash)
  type: boolean
  inputBinding:
    prefix: --skip_plsdb
- id: cpus
  doc: 'Number of cpus to use. (Default: 1)'
  type: long
  inputBinding:
    prefix: --cpus
- id: clear_cache
  doc: Remove any existing cache.
  type: boolean
  inputBinding:
    prefix: --clear_cache
- id: force
  doc: Forcibly overwrite existing datasets.
  type: boolean
  inputBinding:
    prefix: --force
- id: force_ariba
  doc: Forcibly overwrite existing Ariba datasets.
  type: boolean
  inputBinding:
    prefix: --force_ariba
- id: force_mlst
  doc: Forcibly overwrite existing MLST datasets.
  type: boolean
  inputBinding:
    prefix: --force_mlst
- id: force_pro_kk_a
  doc: Forcibly overwrite existing Prokka datasets.
  type: boolean
  inputBinding:
    prefix: --force_prokka
- id: force_min_mer
  doc: Forcibly overwrite existing minmer datasets.
  type: boolean
  inputBinding:
    prefix: --force_minmer
- id: force_pls_db
  doc: Forcibly overwrite existing PLSDB datasets.
  type: boolean
  inputBinding:
    prefix: --force_plsdb
- id: keep_files
  doc: Keep all downloaded and intermediate files.
  type: boolean
  inputBinding:
    prefix: --keep_files
- id: list_datasets
  doc: List Ariba reference datasets and MLST schemas available for setup.
  type: boolean
  inputBinding:
    prefix: --list_datasets
- id: depends
  doc: Verify dependencies are installed.
  type: boolean
  inputBinding:
    prefix: --depends
- id: verbose
  doc: Print debug related text.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: silent
  doc: Only critical errors will be printed.
  type: boolean
  inputBinding:
    prefix: --silent
outputs: []
cwlVersion: v1.1
baseCommand:
- bactopia-datasets.py
