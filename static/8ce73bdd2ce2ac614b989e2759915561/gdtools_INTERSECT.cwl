class: CommandLineTool
id: ../../../gdtools_INTERSECT.cwl
inputs:
- id: output
  doc: Output Genome Diff file name (DEFAULT=output.gd)
  type: string
  inputBinding:
    prefix: --output
- id: verbose
  doc: Verbose mode
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- gdtools
- INTERSECT
