class: CommandLineTool
id: ../../../mb_naive_bsfinder.cwl
inputs:
- id: in_min_transitions
  doc: minimum number of transitions required
  type: long
  inputBinding:
    prefix: --min_transitions
- id: in_reference
  doc: set default reference nucleotide
  type: string
  inputBinding:
    prefix: --reference
- id: in_mutation
  doc: "set default mutation nucleotide\n"
  type: string
  inputBinding:
    prefix: --mutation
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb-naive-bsfinder
