#!/usr/bin/env cwl-runner

baseCommand:
- varlookup
class: CommandLineTool
cwlVersion: v1.0
id: varlookup
inputs:
- doc: max separation distance (bp) of adjacent loci between bedpe files [50]
  id: distance
  inputBinding:
    prefix: --distance
  type: long
- doc: 'Pruned merged bedpe (A file) or standard input (-a stdin). '
  id: a_file
  inputBinding:
    prefix: --aFile
  type: File
- doc: Pruned merged bedpe (B file) (-b stdin). For prunning use -- ClusterBedpe.py
  id: b_file
  inputBinding:
    prefix: --bFile
  type: File
- doc: Cohort name to add information of matching variants (default:bFile)
  id: cohort
  inputBinding:
    prefix: --cohort
  type: string
- doc: 'Output BEDPE to write (default: stdout)'
  id: output
  inputBinding:
    prefix: --output
  type: string
