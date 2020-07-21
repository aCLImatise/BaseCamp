class: CommandLineTool
id: ../../../geneorder.py.cwl
inputs:
- id: outfile
  doc: 'write values to FILE (default: stdout)'
  type: File
  inputBinding:
    prefix: --outfile
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
- id: output_format_nname
  doc: 'output format: %n=name, %a=accession, %g=gene order'
  type: string
  inputBinding:
    prefix: -f
- id: ignore
  doc: ignore genes with name NAME
  type: string
  inputBinding:
    prefix: --ignore
- id: ignore_all
  doc: ignore all errors
  type: boolean
  inputBinding:
    prefix: --ignoreall
- id: not_rna
  doc: ignore tRNAs
  type: boolean
  inputBinding:
    prefix: --notrna
- id: mad
  doc: merge adjacent duplicates
  type: boolean
  inputBinding:
    prefix: --mad
- id: max
  doc: consider only max score part per gene
  type: boolean
  inputBinding:
    prefix: --max
- id: gb_files
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- geneorder.py
