#!/usr/bin/env cwl-runner

baseCommand:
- centrifuge_evaluate.py
class: CommandLineTool
cwlVersion: v1.0
id: centrifuge_evaluate.py
inputs:
- doc: Centrifuge index
  id: index_base
  inputBinding:
    position: 0
  type: string
- doc: index base for read (default same as index base)
  id: index_base_for_read
  inputBinding:
    prefix: --index-base-for-read
  type: string
- doc: 'Number of fragments in millions (default: 1)'
  id: num_fragment
  inputBinding:
    prefix: --num-fragment
  type: string
- doc: Paired-end reads
  id: paired
  inputBinding:
    prefix: --paired
  type: boolean
- doc: 'per-base sequencing error rate (%) (default: 0.0)'
  id: error_rate
  inputBinding:
    prefix: --error-rate
  type: string
- doc: 'A comma-separated list of ranks (default: strain,species,genus,family,order,class,phylum)'
  id: rank_list
  inputBinding:
    prefix: --rank-list
  type: string
- doc: 'A comma-separated list of aligners (default: centrifuge)'
  id: program_list
  inputBinding:
    prefix: --program-list
  type: string
- doc: Just check runtime without evaluation
  id: runtime_only
  inputBinding:
    prefix: --runtime-only
  type: boolean
- doc: Do not write results into a sqlite database
  id: no_sql
  inputBinding:
    prefix: --no-sql
  type: boolean
- doc: also print some statistics to stderr
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Debug
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
