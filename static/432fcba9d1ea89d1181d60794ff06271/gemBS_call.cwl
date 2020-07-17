class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gemBS_call.cwl
inputs:
- id: contig_list
  doc: List of contigs on which to perform the methylation calling.
  type: string[]
  inputBinding:
    prefix: --contig-list
- id: sample_name
  doc: Name of sample to be called
  type: string
  inputBinding:
    prefix: --sample-name
- id: barcode
  doc: Barcode of sample to be called
  type: string
  inputBinding:
    prefix: --barcode
- id: mapq_threshold
  doc: Threshold for MAPQ scores
  type: string
  inputBinding:
    prefix: --mapq-threshold
- id: qual_threshold
  doc: Threshold for base quality scores
  type: string
  inputBinding:
    prefix: --qual-threshold
- id: right_trim
  doc: 'Bases to trim from right of read pair, Default: 0'
  type: string
  inputBinding:
    prefix: --right-trim
- id: left_trim
  doc: 'Bases to trim from left of read pair, Default: 5'
  type: string
  inputBinding:
    prefix: --left-trim
- id: threads
  doc: 'Number of threads, Default: 1'
  type: string
  inputBinding:
    prefix: --threads
- id: jobs
  doc: Number of parallel jobs
  type: string
  inputBinding:
    prefix: --jobs
- id: keep_duplicates
  doc: Do not merge duplicate reads.
  type: boolean
  inputBinding:
    prefix: --keep-duplicates
- id: ignore_duplicate_flag
  doc: Ignore duplicate flag from SAM/BAM files.
  type: boolean
  inputBinding:
    prefix: --ignore_duplicate_flag
- id: keep_unmatched
  doc: Do not discard reads that do not form proper pairs.
  type: boolean
  inputBinding:
    prefix: --keep-unmatched
- id: species
  doc: 'Sample species name. Default: None'
  type: string
  inputBinding:
    prefix: --species
- id: remove
  doc: Remove individual BCF files after merging.
  type: boolean
  inputBinding:
    prefix: --remove
- id: haploid
  doc: Force genotype calls to be homozygous
  type: string
  inputBinding:
    prefix: --haploid
- id: conversion
  doc: Set under and over conversion rates (under,over)
  type: string
  inputBinding:
    prefix: --conversion
- id: reference_bias
  doc: Set bias to reference homozygote
  type: string
  inputBinding:
    prefix: --reference-bias
- id: concat_only
  doc: Only perform merging BCF files.
  type: boolean
  inputBinding:
    prefix: --concat-only
- id: no_merge
  doc: Do not automatically merge BCFs
  type: boolean
  inputBinding:
    prefix: --no-merge
- id: pool
  doc: Contig pool on which to perform the methylation calling.
  type: string
  inputBinding:
    prefix: --pool
- id: list_pools
  doc: '[LEVEL]  List contig pools and exit. Level 1 - list names, level > 1 - list
    pool composition'
  type: boolean
  inputBinding:
    prefix: --list-pools
- id: dry_run
  doc: Output mapping commands without execution
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: json
  doc: FILE      Output JSON file with details of pending commands
  type: string
  inputBinding:
    prefix: --json
- id: ignore_db
  doc: Ignore database for --dry-run and --json commands
  type: boolean
  inputBinding:
    prefix: --ignore-db
- id: ignore_dep
  doc: Ignore dependencies for --dry-run and --json commands
  type: boolean
  inputBinding:
    prefix: --ignore-dep
outputs: []
cwlVersion: v1.1
baseCommand:
- gemBS
- call
