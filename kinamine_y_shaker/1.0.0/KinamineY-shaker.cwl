#!/usr/bin/env cwl-runner

baseCommand:
- KinamineY-shaker
class: CommandLineTool
cwlVersion: v1.0
id: kinaminey-shaker
inputs:
- doc: ''
  id: java
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: protein_pilot_distinct_peptide_summary
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: fast_a
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: output_dir
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: fdr
  inputBinding:
    position: 4
  type: string
- doc: ''
  id: jar
  inputBinding:
    prefix: -jar
  type: string
