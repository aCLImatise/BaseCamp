class: CommandLineTool
id: ../../../iu_interleave_fastq.cwl
inputs:
- id: one
  doc: FASTQ, --input-r1 R1 FASTQ Read 1
  type: string
  inputBinding:
    prefix: '-1'
- id: two
  doc: FASTQ, --input-r2 R2 FASTQ Read 1
  type: string
  inputBinding:
    prefix: '-2'
- id: output_file_path
  doc: Interleaved FASTQ file path (give it a good name).
  type: string
  inputBinding:
    prefix: --output-file-path
- id: var_3
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_4
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- iu-interleave-fastq
