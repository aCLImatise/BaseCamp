class: CommandLineTool
id: pydemult.cwl
inputs:
- id: in_sample_sheet
  doc: ''
  type: string
  inputBinding:
    prefix: --samplesheet
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
- pydemult
