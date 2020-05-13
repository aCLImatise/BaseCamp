class: CommandLineTool
id: getinfo.py.cwl
inputs:
- id: gb_files
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: outfile
  doc: 'write values to FILE (default: stdout)'
  type: File
  inputBinding:
    prefix: --outfile
- id: f
  doc: 'output format: %n=name, %a=accession, %taxid=taxid, %strain=strain, %c=code
    table, %seq=sequence, %s=size, %t=taxonomy string, %r=references, %pmid=pubmed
    ids'
  type: string
  inputBinding:
    prefix: -f
- id: t
  doc: allow only entries with TAX in the taxonomy
  type: string
  inputBinding:
    prefix: -t
- id: t
  doc: forbid all entries with TAX in the taxonomy
  type: string
  inputBinding:
    prefix: -T
outputs: []
cwlVersion: v1.1
baseCommand:
- getinfo.py
