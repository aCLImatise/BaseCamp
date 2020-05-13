class: CommandLineTool
id: make_phylogeny.py.cwl
inputs:
- id: input_fp
  doc: Path to read input fasta alignment, only first word in defline will be considered
    [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- make_phylogeny.py
