class: CommandLineTool
id: kaiju_convertMAR.py.cwl
inputs:
- id: in_ref
  doc: 'MarRef TSV file path (default: MarRef.tsv)'
  type: File?
  inputBinding:
    prefix: --ref
- id: in_db
  doc: 'MarDB TSV file path (default: MarDB.tsv)'
  type: File?
  inputBinding:
    prefix: --db
- id: in_nodes
  doc: 'NCBI nodes.dmp file path (default: nodes.dmp)'
  type: File?
  inputBinding:
    prefix: --nodes
- id: in_genomes
  doc: 'genomes download directory (default: genomes)'
  type: Directory?
  inputBinding:
    prefix: --genomes
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- kaiju-convertMAR.py
