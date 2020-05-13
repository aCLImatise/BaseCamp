class: CommandLineTool
id: orthofinder.cwl
inputs:
- id: x
  doc: Don't add species names to sequence IDs
  type: boolean
  inputBinding:
    prefix: -X
- id: n
  doc: Name to append to the results directory
  type: string
  inputBinding:
    prefix: -n
- id: o
  doc: Non-default results directory
  type: string
  inputBinding:
    prefix: -o
- id: op
  doc: Stop after preparing input files for BLAST
  type: boolean
  inputBinding:
    prefix: -op
- id: og
  doc: Stop after inferring orthogroups
  type: boolean
  inputBinding:
    prefix: -og
- id: os
  doc: Stop after writing sequence files for orthogroups (requires '-M msa')
  type: boolean
  inputBinding:
    prefix: -os
- id: oa
  doc: Stop after inferring alignments for orthogroups (requires '-M msa')
  type: boolean
  inputBinding:
    prefix: -oa
- id: ot
  doc: 'Stop after inferring gene trees for orthogroups '
  type: boolean
  inputBinding:
    prefix: -ot
- id: b
  doc: <dir>         Start OrthoFinder from pre-computed BLAST results in <dir>
  type: boolean
  inputBinding:
    prefix: -b
- id: fg
  doc: Start OrthoFinder from pre-computed orthogroups in <dir>
  type: string
  inputBinding:
    prefix: -fg
- id: ft
  doc: Start OrthoFinder from pre-computed gene trees in <dir>
  type: string
  inputBinding:
    prefix: -ft
outputs: []
cwlVersion: v1.1
baseCommand:
- orthofinder
