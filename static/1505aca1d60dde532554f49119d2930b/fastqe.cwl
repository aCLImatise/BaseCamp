class: CommandLineTool
id: fastqe.cwl
inputs:
- id: fast_a_file
  doc: Input FASTQ files
  type: string
  inputBinding:
    position: 0
- id: min_len
  doc: Minimum length sequence to include in stats (default 0)
  type: string
  inputBinding:
    prefix: --minlen
- id: mean
  doc: show mean quality per position (DEFAULT)
  type: boolean
  inputBinding:
    prefix: --mean
- id: bin
  doc: use binned scores
  type: boolean
  inputBinding:
    prefix: --bin
- id: min
  doc: show minimum quality per position
  type: boolean
  inputBinding:
    prefix: --min
- id: max
  doc: show maximum quality per position
  type: boolean
  inputBinding:
    prefix: --max
- id: log
  doc: record program progress in LOG_FILE
  type: string
  inputBinding:
    prefix: --log
- id: scale
  doc: show relevant scale in output
  type: boolean
  inputBinding:
    prefix: --scale
outputs: []
cwlVersion: v1.1
baseCommand:
- fastqe
