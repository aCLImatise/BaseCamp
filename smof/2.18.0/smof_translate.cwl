class: CommandLineTool
id: smof_translate.cwl
inputs:
- id: input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 0
- id: from_start
  doc: Require each product begin with a start codon
  type: boolean
  inputBinding:
    prefix: --from-start
- id: all_frames
  doc: Translate in all frames, keep longest
  type: boolean
  inputBinding:
    prefix: --all-frames
- id: cds
  doc: Write the DNA coding sequence
  type: boolean
  inputBinding:
    prefix: --cds
outputs: []
cwlVersion: v1.1
baseCommand:
- smof
- translate
