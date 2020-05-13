class: CommandLineTool
id: sam_to_gff3.py.cwl
inputs:
- id: input_fast_a
  doc: (Optional) input fasta. If given, coverage will be calculated.
  type: string
  inputBinding:
    prefix: --input_fasta
- id: source
  doc: 'source name (ex: hg38, mm10)'
  type: string
  inputBinding:
    prefix: --source
outputs: []
cwlVersion: v1.1
baseCommand:
- sam_to_gff3.py
