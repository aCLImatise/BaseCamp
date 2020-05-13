class: CommandLineTool
id: mobster.cwl
inputs:
- id: properties
  doc: '[properties]'
  type: boolean
  inputBinding:
    prefix: -properties
- id: in
  doc: '[input .bam file]. This value will override corresponding value in properties
    file. Multiple BAM files may be specified if seperated by a comma'
  type: boolean
  inputBinding:
    prefix: -in
- id: out
  doc: '[output prefix]. This value will override corresponding value in properties
    file.'
  type: boolean
  inputBinding:
    prefix: -out
- id: sn
  doc: '[sample name]. This value will override corresponding value in properties
    file. Multiple sample names may be specified if seperated by a comma'
  type: boolean
  inputBinding:
    prefix: -sn
outputs: []
cwlVersion: v1.1
baseCommand:
- mobster
