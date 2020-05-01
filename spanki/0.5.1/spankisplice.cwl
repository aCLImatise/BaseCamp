#!/usr/bin/env cwl-runner

baseCommand:
- spankisplice
class: CommandLineTool
cwlVersion: v1.0
id: spankisplice
inputs:
- doc: Reference GTF
  id: g
  inputBinding:
    prefix: -g
  type: string
- doc: AStalavista definitions Generated from the reference GTF you are using
  id: a
  inputBinding:
    prefix: -a
  type: string
- doc: junctiontab (jtab) From spankijunc or merge_jtabs
  id: j_tab
  inputBinding:
    prefix: -jtab
  type: string
- doc: Fasta file Must have same chromosomes as GTF
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: Cufflinks output The isoforms.fpkm_tracking file, to extract FPKMs (optional)
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: Output directory, default='spankisplice_out'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: Vebosely report event tables, default=F
  id: v
  inputBinding:
    prefix: -v
  type: string
