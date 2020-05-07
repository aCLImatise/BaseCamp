class: CommandLineTool
id: extract_supertranscript_from_reference.py.cwl
inputs:
- id: gtf
  doc: Path to gtf annotation file.
  type: string
  inputBinding:
    prefix: --gtf
- id: gff3
  doc: Path to gff3 annotation file.
  type: string
  inputBinding:
    prefix: --gff3
- id: seq
  doc: Path to fasta file.
  type: string
  inputBinding:
    prefix: --seq
- id: o
  doc: Name base and path for output
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_supertranscript_from_reference.py
