class: CommandLineTool
id: reads_bx_sqlite3.py.cwl
inputs:
- id: in_fast_q
  doc: "gzipped barcoded Fastq file from reads obtained with\nlongranger basic"
  type: File
  inputBinding:
    prefix: --fastq
- id: in_idx
  doc: barcodes index file
  type: File
  inputBinding:
    prefix: --idx
- id: in_bdx
  doc: barcodes list
  type: string
  inputBinding:
    prefix: --bdx
- id: in_gz
  doc: fastq is zipped
  type: boolean
  inputBinding:
    prefix: --gz
- id: in_mode
  doc: mode of storage (shelve/sqlite)
  type: string
  inputBinding:
    prefix: --mode
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- reads_bx_sqlite3.py
