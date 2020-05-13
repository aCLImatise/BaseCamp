class: CommandLineTool
id: smof_reverse.cwl
inputs:
- id: input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 0
- id: complement
  doc: take the reverse complement of the sequence
  type: boolean
  inputBinding:
    prefix: --complement
- id: no_validate
  doc: do not check whether the sequence is DNA before reverse complement
  type: boolean
  inputBinding:
    prefix: --no-validate
- id: preserve_color
  doc: Preserve incoming color
  type: boolean
  inputBinding:
    prefix: --preserve-color
- id: force_color
  doc: print in color even to non-tty (DANGEROUS)
  type: boolean
  inputBinding:
    prefix: --force-color
outputs: []
cwlVersion: v1.1
baseCommand:
- smof
- reverse
