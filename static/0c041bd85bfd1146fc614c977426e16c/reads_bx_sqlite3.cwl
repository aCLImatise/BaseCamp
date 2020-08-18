class: CommandLineTool
id: ../../../reads_bx_sqlite3.py.cwl
inputs:
- id: fast_q
  doc: gzipped barcoded Fastq file from reads obtained with longranger basic
  type: string
  inputBinding:
    prefix: --fastq
- id: idx
  doc: barcodes index file
  type: string
  inputBinding:
    prefix: --idx
- id: bdx
  doc: barcodes list
  type: string
  inputBinding:
    prefix: --bdx
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
- reads_bx_sqlite3.py
