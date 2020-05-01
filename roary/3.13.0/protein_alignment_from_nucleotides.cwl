#!/usr/bin/env cwl-runner

baseCommand:
- protein_alignment_from_nucleotides
class: CommandLineTool
cwlVersion: v1.0
id: protein_alignment_from_nucleotides
inputs:
- doc: nucleotide alignment with MAFFT
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: verbose output to STDOUT
  id: v
  inputBinding:
    prefix: -v
  type: boolean
