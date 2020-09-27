class: CommandLineTool
id: assignTSStoGene.pl.cwl
inputs:
- id: in_genome
  doc: (use default homer gene annotation/RefSeq)
  type: string
  inputBinding:
    prefix: -genome
- id: in_gtf
  doc: (use custom gene annotation, can also use -gff or -gff3)
  type: File
  inputBinding:
    prefix: -gtf
- id: in_gid
  doc: (use gene_id with GTF file)
  type: boolean
  inputBinding:
    prefix: -gid
- id: in_bed
  doc: (use custom gene annotation in bed/peak file format)
  type: File
  inputBinding:
    prefix: -bed
- id: in_ref_tss
  doc: (only supply reference TSS positions)
  type: File
  inputBinding:
    prefix: -refTSS
- id: in_max_dist_tss
  doc: '<#> (max dist from tss to gene allowed, default: 1000)'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_no_keep_ref
  doc: "(don't keep reference promoters not found in the tss peak file, default: keep)"
  type: boolean
  inputBinding:
    prefix: -nokeepRef
- id: in_keep_orphans
  doc: '(keep TSS without reference annotation, default: remove)'
  type: boolean
  inputBinding:
    prefix: -keepOrphans
- id: in_bed_out
  doc: (output genes with new 5'end)
  type: File
  inputBinding:
    prefix: -bedOut
- id: in_three_p
  doc: (do 3' end assignment instead of TSS, assumes peaks are on - strand rel to
    gene)
  type: boolean
  inputBinding:
    prefix: -3p
- id: in_tss_peak_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- assignTSStoGene.pl
