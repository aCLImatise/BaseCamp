class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/getinfo.py.cwl
inputs:
- id: outfile
  doc: 'write values to FILE (default: stdout)'
  type: File
  inputBinding:
    prefix: --outfile
- id: output_format_nname
  doc: 'output format: %n=name, %a=accession, %taxid=taxid, %strain=strain, %c=code
    table, %seq=sequence, %s=size, %t=taxonomy string, %r=references, %pmid=pubmed
    ids'
  type: string
  inputBinding:
    prefix: -f
- id: allow_only_entries
  doc: allow only entries with TAX in the taxonomy
  type: string
  inputBinding:
    prefix: -t
- id: forbid_entries_tax
  doc: forbid all entries with TAX in the taxonomy
  type: string
  inputBinding:
    prefix: -T
- id: gb_files
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- getinfo.py
