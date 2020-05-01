#!/usr/bin/env cwl-runner

baseCommand:
- GeneAssign.py
class: CommandLineTool
cwlVersion: v1.0
id: geneassign.py
inputs:
- doc: input core gene coverages
  id: scg_cov_file
  inputBinding:
    position: 0
  type: string
- doc: input MAP estimate frequencies
  id: gamma_star_file
  inputBinding:
    position: 1
  type: string
- doc: mean contig/genes coverages
  id: cov_file
  inputBinding:
    position: 2
  type: string
- doc: predicted transition matrix
  id: epsilon_file
  inputBinding:
    position: 3
  type: string
