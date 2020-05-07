class: CommandLineTool
id: rtk.cwl
inputs:
- id: i
  doc: path to an .txt file (tab delimited) to rarefy
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: path to a output directory
  type: boolean
  inputBinding:
    prefix: -o
- id: d
  doc: Depth or multiple comma seperated depths to rarefy to. Default is 0.95 times
    the minimal column sum.
  type: boolean
  inputBinding:
    prefix: -d
- id: r
  doc: Number of times to create diversity measures. Default is 10.
  type: boolean
  inputBinding:
    prefix: -r
- id: w
  doc: Number of rarefied tables to write.
  type: boolean
  inputBinding:
    prefix: -w
- id: t
  doc: 'Number of threads to use. Default: 1'
  type: boolean
  inputBinding:
    prefix: -t
- id: ns
  doc: If set, no temporary files will be used when writing rarefaction tables to
    disk.
  type: boolean
  inputBinding:
    prefix: -ns
outputs: []
cwlVersion: v1.1
baseCommand:
- rtk
