class: CommandLineTool
id: filterBam.cwl
inputs:
- id: best
  doc: output all best matches that satisfy minId and minCover (default 0)
  type: boolean
  inputBinding:
    prefix: --best
- id: no_introns
  doc: do not allow longer gaps -for RNA-RNA alignments- (default 0)
  type: boolean
  inputBinding:
    prefix: --noIntrons
- id: paired
  doc: 'require that paired reads are on opposite strands of same target (default
    0). NOTE: see prerequisite section above.'
  type: boolean
  inputBinding:
    prefix: --paired
- id: uniq
  doc: take only best match, iff, second best is much worse  (default 0)
  type: boolean
  inputBinding:
    prefix: --uniq
- id: verbose
  doc: output debugging info (default 0)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: insert_limit
  doc: maximum assumed size of inserts (default 10)
  type: string
  inputBinding:
    prefix: --insertLimit
- id: max_intron_len
  doc: maximal separation of paired reads (default 500000)
  type: string
  inputBinding:
    prefix: --maxIntronLen
- id: max_sortes_test
  doc: maximal sortedness (default 100000)
  type: string
  inputBinding:
    prefix: --maxSortesTest
- id: min_cover
  doc: minimal percentage of coverage of the query read (default 80)
  type: string
  inputBinding:
    prefix: --minCover
- id: mini_d
  doc: minimal percentage of identity (default 92)
  type: string
  inputBinding:
    prefix: --minId
- id: min_intron_len
  doc: minimal     ''     ''   ''    ''   (default 35)
  type: string
  inputBinding:
    prefix: --minIntronLen
- id: uniq_thresh
  doc: 'threshold % for uniq, second best must be at most this fraction of best (default
    0.96) '
  type: string
  inputBinding:
    prefix: --uniqThresh
- id: common_gene_file
  doc: file name in which to write cases where one read maps to  several different
    genes
  type: string
  inputBinding:
    prefix: --commonGeneFile
- id: pair_bed_file
  doc: 'file name of pairedness coverage: options: a .bed format file in which for
    each position the number of filtered read pairs is reported that contain the position
    in or between the reads'
  type: string
  inputBinding:
    prefix: --pairBedFile
- id: pairwise_alignments
  doc: 'use in case alignments were done in pairwise fashion (default:  0)'
  type: boolean
  inputBinding:
    prefix: --pairwiseAlignments
outputs: []
cwlVersion: v1.1
baseCommand:
- filterBam
