class: CommandLineTool
id: filterPSL.pl.cwl
inputs:
- id: pair_bed
  doc: 'file name of pairedness coverage: a .bed format file in which for each position
    the number of filtered read pairs is reported that contain the position in or
    between the reads'
  type: string
  inputBinding:
    prefix: --pairbed
- id: mini_d
  doc: minimal percentage of identity (default 92)
  type: string
  inputBinding:
    prefix: --minId
- id: min_cover
  doc: minimal percentage of coverage of the query read (default 80)
  type: string
  inputBinding:
    prefix: --minCover
- id: uniq
  doc: take only best match and only, when second best is much worse (default false)
  type: boolean
  inputBinding:
    prefix: --uniq
- id: uniq_thresh
  doc: threshold % for uniq, second best must be at most this fraction of best (default
    .96)
  type: boolean
  inputBinding:
    prefix: --uniqthresh
- id: best
  doc: output all best matches that satisfy minId and minCover
  type: boolean
  inputBinding:
    prefix: --best
- id: common_gene_file
  doc: file name in which to write cases where one read maps to several different
    genes
  type: string
  inputBinding:
    prefix: --commongenefile
- id: no_introns
  doc: do not allow longer gaps (for RNA-RNA alignments)
  type: boolean
  inputBinding:
    prefix: --nointrons
- id: paired
  doc: require that paired reads are on opposite strands of same target(default false)
  type: boolean
  inputBinding:
    prefix: --paired
- id: max_intron_len
  doc: maximal separation of paired reads (default 500000
  type: string
  inputBinding:
    prefix: --maxintronlen
- id: verbose
  doc: output debugging info (default false)
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- filterPSL.pl
