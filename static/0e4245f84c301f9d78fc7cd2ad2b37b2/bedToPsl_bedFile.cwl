class: CommandLineTool
id: bedToPsl_bedFile.cwl
inputs:
- id: chrom_sizes
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bed_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: psl_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- bedToPsl
- bedFile
