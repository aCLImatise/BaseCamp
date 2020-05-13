class: CommandLineTool
id: bamToPsl.cwl
inputs:
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_psl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: no_head
  doc: '- do not output the PSL header, default has header output'
  type: boolean
  inputBinding:
    prefix: -nohead
- id: allow_dups
  doc: '- for fasta output, allow duplicate query sequences output - default is to
    eliminate duplicate sequences - runs much faster without the duplicate check'
  type: boolean
  inputBinding:
    prefix: -allowDups
- id: no_sequence_verify
  doc: for dups, do not verify each sequence
  type: string
  inputBinding:
    prefix: -noSequenceVerify
- id: when
  doc: same name is identical, assume they are
  type: string
  inputBinding:
    prefix: '- when'
- id: helps
  doc: up the dup check but not thorough
  type: string
  inputBinding:
    prefix: '- helps'
- id: dots
  doc: '- output progress dot(.) every N alignments processed'
  type: string
  inputBinding:
    prefix: -dots
outputs: []
cwlVersion: v1.1
baseCommand:
- bamToPsl
