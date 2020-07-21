class: CommandLineTool
id: ../../../assignTSStoGene.pl.cwl
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
  doc: (use custom gene annotation in bed/peak file format)
  type: string
  inputBinding:
    prefix: -bed
- id: ref_tss
  doc: (only supply reference TSS positions)
  type: string
  inputBinding:
    prefix: -refTSS
- id: max_dist_tss
  doc: '<#> (max dist from tss to gene allowed, default: 1000)'
  type: boolean
  inputBinding:
    prefix: -d
- id: no_keep_ref
  doc: "(don't keep reference promoters not found in the tss peak file, default: keep)"
  type: boolean
  inputBinding:
    prefix: -nokeepRef
- id: keep_orphans
  doc: '(keep TSS without reference annotation, default: remove)'
  type: boolean
  inputBinding:
    prefix: -keepOrphans
- id: bed_out
  doc: (output genes with new 5'end)
  type: File
  inputBinding:
    prefix: -bedOut
- id: three_p
  doc: (do 3' end assignment instead of TSS, assumes peaks are on - strand rel to
    gene)
  type: boolean
  inputBinding:
    prefix: -3p
- id: tss_peak_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- assignTSStoGene.pl
