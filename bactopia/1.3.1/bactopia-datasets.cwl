#!/usr/bin/env cwl-runner

baseCommand:
- bactopia-datasets.py
class: CommandLineTool
cwlVersion: v1.0
id: bactopia-datasets.py
inputs:
- doc: Directory to write output.
  id: output_directory
  inputBinding:
    position: 0
  type: string
- doc: 'Setup Ariba datasets for a given reference or a list of references in a text
    file. (Default: card,vfdb_core)'
  id: ariba
  inputBinding:
    prefix: --ariba
  type: string
- doc: Download available MLST schemas and completed genomes for a given species or
    a list of species in a text file.
  id: species
  inputBinding:
    prefix: --species
  type: string
- doc: Skip creation of a Prokka formatted fasta for each species
  id: skip_pro_kk_a
  inputBinding:
    prefix: --skip_prokka
  type: boolean
- doc: Include all genus members in the Prokka proteins FASTA
  id: include_genus
  inputBinding:
    prefix: --include_genus
  type: boolean
- doc: 'CD-HIT (-c) sequence identity threshold. (Default: 0.9)'
  id: identity
  inputBinding:
    prefix: --identity
  type: double
- doc: 'CD-HIT (-s) length difference cutoff. (Default: 0.8)'
  id: overlap
  inputBinding:
    prefix: --overlap
  type: double
- doc: 'CD-HIT (-M) memory limit (in MB). (Default: unlimited'
  id: max_memory
  inputBinding:
    prefix: --max_memory
  type: long
- doc: Use CD-HIT's (-g 0) fast clustering algorithm, instead of the accurate but
    slow algorithm.
  id: fast_cluster
  inputBinding:
    prefix: --fast_cluster
  type: boolean
- doc: Skip download of pre-computed minmer datasets (mash, sourmash)
  id: skip_min_mer
  inputBinding:
    prefix: --skip_minmer
  type: boolean
- doc: Skip download of pre-computed PLSDB datbases (blast, mash)
  id: skip_pls_db
  inputBinding:
    prefix: --skip_plsdb
  type: boolean
- doc: 'Number of cpus to use. (Default: 1)'
  id: cpus
  inputBinding:
    prefix: --cpus
  type: long
- doc: Remove any existing cache.
  id: clear_cache
  inputBinding:
    prefix: --clear_cache
  type: boolean
- doc: Forcibly overwrite existing datasets.
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: Forcibly overwrite existing Ariba datasets.
  id: force_ariba
  inputBinding:
    prefix: --force_ariba
  type: boolean
- doc: Forcibly overwrite existing MLST datasets.
  id: force_mlst
  inputBinding:
    prefix: --force_mlst
  type: boolean
- doc: Forcibly overwrite existing Prokka datasets.
  id: force_pro_kk_a
  inputBinding:
    prefix: --force_prokka
  type: boolean
- doc: Forcibly overwrite existing minmer datasets.
  id: force_min_mer
  inputBinding:
    prefix: --force_minmer
  type: boolean
- doc: Forcibly overwrite existing PLSDB datasets.
  id: force_pls_db
  inputBinding:
    prefix: --force_plsdb
  type: boolean
- doc: Keep all downloaded and intermediate files.
  id: keep_files
  inputBinding:
    prefix: --keep_files
  type: boolean
- doc: List Ariba reference datasets and MLST schemas available for setup.
  id: list_datasets
  inputBinding:
    prefix: --list_datasets
  type: boolean
- doc: Verify dependencies are installed.
  id: depends
  inputBinding:
    prefix: --depends
  type: boolean
- doc: Print debug related text.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Only critical errors will be printed.
  id: silent
  inputBinding:
    prefix: --silent
  type: boolean
