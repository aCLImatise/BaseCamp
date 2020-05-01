#!/usr/bin/env cwl-runner

baseCommand:
- assignTSStoGene.pl
class: CommandLineTool
cwlVersion: v1.0
id: assigntsstogene.pl
inputs:
- doc: (use default homer gene annotation/RefSeq)
  id: genome
  inputBinding:
    prefix: -genome
  type: string
- doc: (use custom gene annotation, can also use -gff or -gff3)
  id: gtf
  inputBinding:
    prefix: -gtf
  type: string
- doc: (use gene_id with GTF file)
  id: gid
  inputBinding:
    prefix: -gid
  type: boolean
- doc: <peak/BED file> (use custom gene annotation in bed/peak file format)
  id: bed
  inputBinding:
    prefix: -bed
  type: boolean
- doc: (only supply reference TSS positions)
  id: ref_tss
  inputBinding:
    prefix: -refTSS
  type: string
