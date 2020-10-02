class: CommandLineTool
id: itsxpress.cwl
inputs:
- id: in_outfile
  doc: ''
  type: boolean
  inputBinding:
    prefix: --outfile
- id: in_fast_q_two
  doc: ''
  type: long
  inputBinding:
    prefix: --fastq2
- id: in_single_end
  doc: ''
  type: boolean
  inputBinding:
    prefix: --single_end
- id: in_fast_q
  doc: ''
  type: string
  inputBinding:
    prefix: --fastq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- itsxpress
