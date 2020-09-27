class: CommandLineTool
id: fastqe.cwl
inputs:
- id: in_min_len
  doc: Minimum length sequence to include in stats (default 0)
  type: long
  inputBinding:
    prefix: --minlen
- id: in_mean
  doc: show mean quality per position (DEFAULT)
  type: boolean
  inputBinding:
    prefix: --mean
- id: in_bin
  doc: use binned scores
  type: boolean
  inputBinding:
    prefix: --bin
- id: in_min
  doc: show minimum quality per position
  type: boolean
  inputBinding:
    prefix: --min
- id: in_max
  doc: show maximum quality per position
  type: boolean
  inputBinding:
    prefix: --max
- id: in_log
  doc: record program progress in LOG_FILE
  type: File
  inputBinding:
    prefix: --log
- id: in_scale
  doc: show relevant scale in output
  type: boolean
  inputBinding:
    prefix: --scale
- id: in_fast_a_file
  doc: Input FASTQ files
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastqe
