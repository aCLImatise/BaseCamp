#!/usr/bin/env cwl-runner

baseCommand:
- segway
class: CommandLineTool
cwlVersion: v1.0
id: segway
inputs:
- doc: try each float in PROGRESSION as the number of gibibytes of memory to allocate
    in turn (default 2,3,4,6,8,10,12,14,15)
  id: mem_usage
  inputBinding:
    prefix: --mem-usage
  type: string
- doc: split up sequences that are larger than SIZE bp (default 2000000)
  id: split_sequences
  inputBinding:
    prefix: --split-sequences
  type: long
- doc: show messages with verbosity NUM (default 0)
  id: verbosity
  inputBinding:
    prefix: --verbosity
  type: string
- doc: specify an option to be passed to the cluster manager
  id: cluster_opt
  inputBinding:
    prefix: --cluster-opt
  type: string
- doc: write all files, but do not run any executables
  id: dry_run
  inputBinding:
    prefix: --dry-run
  type: boolean
