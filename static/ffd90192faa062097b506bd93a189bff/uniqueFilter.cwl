class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/uniqueFilter.cwl
inputs:
- id: instead_finding_regions
  doc: instead of finding regions to remove by looking for duplicatd regions in inputFile,
    load them from subtractFile.
  type: boolean
  inputBinding:
    prefix: -s
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- uniqueFilter
