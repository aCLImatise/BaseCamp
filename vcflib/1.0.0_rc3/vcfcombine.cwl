class: CommandLineTool
id: vcfcombine.cwl
inputs:
- id: region
  doc: A region specifier of the form chrN:x-y to bound the merge
  type: string
  inputBinding:
    prefix: --region
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfcombine
