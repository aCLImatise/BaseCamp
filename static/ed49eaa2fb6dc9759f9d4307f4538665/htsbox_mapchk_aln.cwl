class: CommandLineTool
id: htsbox_mapchk_aln.bam.cwl
inputs:
- id: re_ffa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- htsbox
- mapchk
- aln.bam
