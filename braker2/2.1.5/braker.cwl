class: CommandLineTool
id: braker.pl.cwl
inputs:
- id: etp_mode
  doc: .
  type: boolean
  inputBinding:
    prefix: --etpmode
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
- id: augustus_scripts_path
  doc: .
  type: boolean
  inputBinding:
    prefix: --AUGUSTUS_SCRIPTS_PATH
- id: genemark_gtf
  doc: )
  type: string
  inputBinding:
    prefix: --geneMarkGtf
- id: genemark_gtf
  doc: )
  type: string
  inputBinding:
    prefix: --geneMarkGtf
- id: genemark_gtf
  doc: )
  type: string
  inputBinding:
    prefix: --geneMarkGtf
- id: genemark_gtf
  doc: )
  type: string
  inputBinding:
    prefix: --geneMarkGtf
- id: use_existing
  doc: true.
  type: string
  inputBinding:
    prefix: --useexisting
- id: r
  doc: '76 -v 100 -n 15 -i 0.7 -m 0.3 -w 70 '
  type: boolean
  inputBinding:
    prefix: -r
- id: c
  doc: '100 -p 0.5 '
  type: boolean
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- braker.pl
