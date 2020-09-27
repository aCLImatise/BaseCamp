class: CommandLineTool
id: geneorder.py.cwl
inputs:
- id: in_outfile
  doc: 'write values to FILE (default: stdout)'
  type: File
  inputBinding:
    prefix: --outfile
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
- id: in_output_format_nname
  doc: 'output format: %n=name, %a=accession, %g=gene order'
  type: string
  inputBinding:
    prefix: -f
- id: in_ignore
  doc: ignore genes with name NAME
  type: string
  inputBinding:
    prefix: --ignore
- id: in_ignore_all
  doc: ignore all errors
  type: boolean
  inputBinding:
    prefix: --ignoreall
- id: in_not_rna
  doc: ignore tRNAs
  type: boolean
  inputBinding:
    prefix: --notrna
- id: in_mad
  doc: merge adjacent duplicates
  type: boolean
  inputBinding:
    prefix: --mad
- id: in_max
  doc: consider only max score part per gene
  type: boolean
  inputBinding:
    prefix: --max
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
- geneorder.py
