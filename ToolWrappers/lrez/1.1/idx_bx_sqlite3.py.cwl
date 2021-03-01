class: CommandLineTool
id: idx_bx_sqlite3.py.cwl
inputs:
- id: in_basic
  doc: "barcoded Fastq file from reads obtained with\nlongranger basic"
  type: File?
  inputBinding:
    prefix: --basic
- id: in_idx
  doc: output indexed file
  type: File?
  inputBinding:
    prefix: --idx
- id: in_gz
  doc: fastq is zipped
  type: boolean?
  inputBinding:
    prefix: --gz
- id: in_mode
  doc: mode of storage (shelve/sqlite)
  type: string?
  inputBinding:
    prefix: --mode
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_idx
  doc: output indexed file
  type: File?
  outputBinding:
    glob: $(inputs.in_idx)
hints: []
cwlVersion: v1.1
baseCommand:
- idx_bx_sqlite3.py
