class: CommandLineTool
id: gdtools_NORMALIZE.cwl
inputs:
- id: verbose
  doc: verbose mode (flag)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: output
  doc: output Genome Diff file. (DEFAULT=output.gd)
  type: string
  inputBinding:
    prefix: --output
- id: reference
  doc: File containing reference sequences in GenBank, GFF3, or FASTA format. Option
    may be provided multiple times for multiple files (REQUIRED)
  type: string
  inputBinding:
    prefix: --reference
- id: reassign_ids
  doc: reassign ids to lowest numbers possible.
  type: boolean
  inputBinding:
    prefix: --reassign-ids
- id: repeat_adjacent
  doc: mark repeat-region adjacent, mediated, and between mutations.
  type: boolean
  inputBinding:
    prefix: --repeat-adjacent
- id: dont_check_apply
  doc: skip step that checks consistency of normalize using APPLY.
  type: boolean
  inputBinding:
    prefix: --dont-check-apply
outputs: []
cwlVersion: v1.1
baseCommand:
- gdtools
- NORMALIZE
