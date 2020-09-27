class: CommandLineTool
id: vcfsamplediff.cwl
inputs:
- id: in_strict
  doc: Require that no observations in the germline support the somatic alternate.
  type: boolean
  inputBinding:
    prefix: --strict
- id: in_tag
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sample
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_vcf_file
  doc: ''
  type: File
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vcfsamplediff
