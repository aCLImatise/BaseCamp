class: CommandLineTool
id: mobster.cwl
inputs:
- id: in_properties
  doc: '[properties]'
  type: boolean
  inputBinding:
    prefix: -properties
- id: in_in
  doc: '[input .bam file]. This value will override corresponding value in properties
    file. Multiple BAM files may be specified if seperated by a comma'
  type: boolean
  inputBinding:
    prefix: -in
- id: in_out
  doc: '[output prefix]. This value will override corresponding value in properties
    file.'
  type: File
  inputBinding:
    prefix: -out
- id: in_sn
  doc: '[sample name]. This value will override corresponding value in properties
    file. Multiple sample names may be specified if seperated by a comma'
  type: boolean
  inputBinding:
    prefix: -sn
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: '[output prefix]. This value will override corresponding value in properties
    file.'
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- mobster
