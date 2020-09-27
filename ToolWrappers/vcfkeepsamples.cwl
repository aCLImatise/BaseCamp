class: CommandLineTool
id: vcfkeepsamples.cwl
inputs:
- id: in_vcf_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_sample_one
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_sample_two
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vcfkeepsamples
