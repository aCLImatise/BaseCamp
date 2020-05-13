class: CommandLineTool
id: assignTSStoGene.pl.cwl
inputs:
- id: genome
  doc: (use default homer gene annotation/RefSeq)
  type: string
  inputBinding:
    prefix: -genome
- id: gtf
  doc: (use custom gene annotation, can also use -gff or -gff3)
  type: string
  inputBinding:
    prefix: -gtf
- id: gid
  doc: (use gene_id with GTF file)
  type: boolean
  inputBinding:
    prefix: -gid
- id: bed
  doc: <peak/BED file> (use custom gene annotation in bed/peak file format)
  type: boolean
  inputBinding:
    prefix: -bed
- id: ref_tss
  doc: (only supply reference TSS positions)
  type: string
  inputBinding:
    prefix: -refTSS
outputs: []
cwlVersion: v1.1
baseCommand:
- assignTSStoGene.pl
