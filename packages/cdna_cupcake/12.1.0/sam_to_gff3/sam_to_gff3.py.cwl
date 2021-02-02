class: CommandLineTool
id: sam_to_gff3.py.cwl
inputs:
- id: in_input_fast_a
  doc: "(Optional) input fasta. If given, coverage will be\ncalculated."
  type: string
  inputBinding:
    prefix: --input_fasta
- id: in_source
  doc: "source name (ex: hg38, mm10)\n"
  type: long
  inputBinding:
    prefix: --source
- id: in_sam_filename
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sam_to_gff3.py
