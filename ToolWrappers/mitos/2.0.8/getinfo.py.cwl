class: CommandLineTool
id: getinfo.py.cwl
inputs:
- id: in_outfile
  doc: 'write values to FILE (default: stdout)'
  type: File
  inputBinding:
    prefix: --outfile
- id: in_output_format_nname
  doc: "output format: %n=name, %a=accession, %taxid=taxid,\n%strain=strain, %c=code\
    \ table, %seq=sequence, %s=size,\n%t=taxonomy string, %r=references, %pmid=pubmed\
    \ ids"
  type: long
  inputBinding:
    prefix: -f
- id: in_allow_only_entries
  doc: allow only entries with TAX in the taxonomy
  type: string
  inputBinding:
    prefix: -t
- id: in_forbid_entries_tax
  doc: forbid all entries with TAX in the taxonomy
  type: string
  inputBinding:
    prefix: -T
- id: in_gb_files
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- getinfo.py
