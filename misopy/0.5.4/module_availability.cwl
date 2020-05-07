class: CommandLineTool
id: module_availability.cwl
inputs:
- id: sam_tools
  doc: available
  type: string
  inputBinding:
    prefix: '- samtools'
- id: bed_tools
  doc: available
  type: string
  inputBinding:
    prefix: '- bedtools'
outputs: []
cwlVersion: v1.1
baseCommand:
- module_availability
