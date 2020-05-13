class: CommandLineTool
id: vcfsamplediff.cwl
inputs:
- id: strict
  doc: Require that no observations in the germline support the somatic alternate.
  type: boolean
  inputBinding:
    prefix: --strict
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfsamplediff
