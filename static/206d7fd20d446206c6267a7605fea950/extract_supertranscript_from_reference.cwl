class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/extract_supertranscript_from_reference.py.cwl
inputs:
- id: gtf
  doc: Path to gtf annotation file.
  type: string
  inputBinding:
    prefix: --gtf
- id: gff_three
  doc: Path to gff3 annotation file.
  type: string
  inputBinding:
    prefix: --gff3
- id: seq
  doc: Path to fasta file.
  type: string
  inputBinding:
    prefix: --seq
- id: name_base_path
  doc: Name base and path for output
  type: string
  inputBinding:
    prefix: -o
- id: usage
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_supertranscript_from_reference.py
