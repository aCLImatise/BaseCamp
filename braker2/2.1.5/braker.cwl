class: CommandLineTool
id: ../../../braker.pl.cwl
inputs:
- id: show_target_gff
  doc: '... > exfile'
  type: string
  inputBinding:
    prefix: --showtargetgff
- id: skip_alignment_out
  doc: '... -o gthfile'
  type: boolean
  inputBinding:
    prefix: -skipalignmentout
- id: genome
  doc: cores.
  type: File
  inputBinding:
    prefix: --genome
- id: use_existing
  doc: true.
  type: string
  inputBinding:
    prefix: --useexisting
outputs: []
cwlVersion: v1.1
baseCommand:
- braker.pl
