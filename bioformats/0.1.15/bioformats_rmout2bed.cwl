class: CommandLineTool
id: ../../../bioformats_rmout2bed.cwl
inputs:
- id: color
  doc: 'how to choose colors of BED repeat records (default: class)'
  type: string
  inputBinding:
    prefix: --color
- id: name
  doc: 'how to choose names of BED repeat records (default: id)'
  type: string
  inputBinding:
    prefix: --name
- id: short
  doc: 'output only repeat loci (the output is a BED3 file) (default: False)'
  type: boolean
  inputBinding:
    prefix: --short
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: rm_out_file
  doc: a RepeatMasker out file
  type: string
  inputBinding:
    position: 0
- id: bed_file
  doc: the output BED file
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bioformats
- rmout2bed
