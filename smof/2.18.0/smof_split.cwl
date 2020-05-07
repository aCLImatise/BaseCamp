class: CommandLineTool
id: smof_split.cwl
inputs:
- id: input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 0
- id: number
  doc: Number of output files or sequences per file
  type: string
  inputBinding:
    prefix: --number
- id: seqs
  doc: split by maximum sequences per file
  type: boolean
  inputBinding:
    prefix: --seqs
- id: prefix
  doc: prefix for output files (default="xxx")
  type: string
  inputBinding:
    prefix: --prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- smof
- split
