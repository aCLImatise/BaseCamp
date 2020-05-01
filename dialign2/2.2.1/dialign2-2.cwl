#!/usr/bin/env cwl-runner

baseCommand:
- dialign2-2
class: CommandLineTool
cwlVersion: v1.0
id: dialign2-2
inputs:
- doc: 'DNA sequences; similarity calculated at the nucleotide level '
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: 'DNA sequences; similarity calculated at the peptide level (by translation
    using the genetic code) '
  id: nt
  inputBinding:
    prefix: -nt
  type: boolean
- doc: 'long genomic sequences: Both nucleotide and peptide similarities calculated '
  id: lgs
  inputBinding:
    prefix: -lgs
  type: boolean
