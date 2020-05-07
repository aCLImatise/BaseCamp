class: CommandLineTool
id: spankisplice.cwl
inputs:
- id: g
  doc: Reference GTF
  type: string
  inputBinding:
    prefix: -g
- id: a
  doc: AStalavista definitions Generated from the reference GTF you are using
  type: string
  inputBinding:
    prefix: -a
- id: j_tab
  doc: junctiontab (jtab) From spankijunc or merge_jtabs
  type: string
  inputBinding:
    prefix: -jtab
- id: f
  doc: Fasta file Must have same chromosomes as GTF
  type: string
  inputBinding:
    prefix: -f
- id: c
  doc: Cufflinks output The isoforms.fpkm_tracking file, to extract FPKMs (optional)
  type: string
  inputBinding:
    prefix: -c
- id: o
  doc: Output directory, default='spankisplice_out'
  type: string
  inputBinding:
    prefix: -o
- id: v
  doc: Vebosely report event tables, default=F
  type: string
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- spankisplice
