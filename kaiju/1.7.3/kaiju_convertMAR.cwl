class: CommandLineTool
id: kaiju_convertMAR.py.cwl
inputs:
- id: ref
  doc: 'MarRef TSV file path (default: MarRef.tsv)'
  type: string
  inputBinding:
    prefix: --ref
- id: db
  doc: 'MarDB TSV file path (default: MarDB.tsv)'
  type: string
  inputBinding:
    prefix: --db
- id: nodes
  doc: 'NCBI nodes.dmp file path (default: nodes.dmp)'
  type: string
  inputBinding:
    prefix: --nodes
- id: genomes
  doc: 'genomes download directory (default: genomes)'
  type: string
  inputBinding:
    prefix: --genomes
outputs: []
cwlVersion: v1.1
baseCommand:
- kaiju-convertMAR.py
