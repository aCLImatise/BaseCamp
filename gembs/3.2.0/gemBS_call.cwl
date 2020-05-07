class: CommandLineTool
id: gemBS_call.cwl
inputs:
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
