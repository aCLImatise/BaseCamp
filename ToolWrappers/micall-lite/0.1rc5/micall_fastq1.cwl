class: CommandLineTool
id: micall_fastq1.cwl
inputs:
- id: in_keep
  doc: ''
  type: boolean
  inputBinding:
    prefix: --keep
- id: in_unzipped
  doc: ''
  type: boolean
  inputBinding:
    prefix: --unzipped
- id: in_outdir
  doc: ''
  type: string
  inputBinding:
    prefix: --outdir
- id: in_batch
  doc: ''
  type: string
  inputBinding:
    prefix: --batch
- id: in_mic_all
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- micall
- fastq1
