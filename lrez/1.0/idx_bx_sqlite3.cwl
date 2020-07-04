class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/idx_bx_sqlite3.py.cwl
inputs:
- id: basic
  doc: barcoded Fastq file from reads obtained with longranger basic
  type: string
  inputBinding:
    prefix: --basic
- id: idx
  doc: output indexed file
  type: string
  inputBinding:
    prefix: --idx
- id: gz
  doc: fastq is zipped
  type: boolean
  inputBinding:
    prefix: --gz
- id: mode
  doc: mode of storage (shelve/sqlite)
  type: string
  inputBinding:
    prefix: --mode
outputs: []
cwlVersion: v1.1
baseCommand:
- idx_bx_sqlite3.py
