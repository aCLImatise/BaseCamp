class: CommandLineTool
id: extract_supertranscript_from_reference.py.cwl
inputs:
- id: in_gtf
  doc: Path to gtf annotation file.
  type: File
  inputBinding:
    prefix: --gtf
- id: in_gff_three
  doc: Path to gff3 annotation file.
  type: long
  inputBinding:
    prefix: --gff3
- id: in_seq
  doc: Path to fasta file.
  type: File
  inputBinding:
    prefix: --seq
- id: in_name_base_path
  doc: Name base and path for output
  type: File
  inputBinding:
    prefix: -o
- id: in_usage
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_base_path
  doc: Name base and path for output
  type: File
  outputBinding:
    glob: $(inputs.in_name_base_path)
cwlVersion: v1.1
baseCommand:
- extract_supertranscript_from_reference.py
