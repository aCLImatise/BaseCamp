class: CommandLineTool
id: filterBam.cwl
inputs:
- id: in_best
  doc: output all best matches that satisfy minId and minCover (default 0)
  type: boolean
  inputBinding:
    prefix: --best
- id: in_no_introns
  doc: do not allow longer gaps -for RNA-RNA alignments- (default 0)
  type: boolean
  inputBinding:
    prefix: --noIntrons
- id: in_paired
  doc: "require that paired reads are on opposite strands of same target\n(default\
    \ 0). NOTE: see prerequisite section above."
  type: boolean
  inputBinding:
    prefix: --paired
- id: in_uniq
  doc: take only best match, iff, second best is much worse  (default 0)
  type: boolean
  inputBinding:
    prefix: --uniq
- id: in_verbose
  doc: output debugging info (default 0)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_insert_limit
  doc: maximum assumed size of inserts (default 10)
  type: long
  inputBinding:
    prefix: --insertLimit
- id: in_max_intron_len
  doc: maximal separation of paired reads (default 500000)
  type: long
  inputBinding:
    prefix: --maxIntronLen
- id: in_max_sortes_test
  doc: maximal sortedness (default 100000)
  type: long
  inputBinding:
    prefix: --maxSortesTest
- id: in_min_cover
  doc: minimal percentage of coverage of the query read (default 80)
  type: long
  inputBinding:
    prefix: --minCover
- id: in_mini_d
  doc: minimal percentage of identity (default 92)
  type: long
  inputBinding:
    prefix: --minId
- id: in_min_intron_len
  doc: minimal     ''     ''   ''    ''   (default 35)
  type: long
  inputBinding:
    prefix: --minIntronLen
- id: in_uniq_thresh
  doc: "threshold % for uniq, second best must be at most this\nfraction of best (default\
    \ 0.96)"
  type: double
  inputBinding:
    prefix: --uniqThresh
- id: in_common_gene_file
  doc: "file name in which to write cases where one read maps to\nseveral different\
    \ genes"
  type: File
  inputBinding:
    prefix: --commonGeneFile
- id: in_pair_bed_file
  doc: "file name of pairedness coverage:\noptions:\na .bed format file in which for\
    \ each position the number of\nfiltered read pairs is reported that contain the\
    \ position in\nor between the reads"
  type: long
  inputBinding:
    prefix: --pairBedFile
- id: in_pairwise_alignments
  doc: 'use in case alignments were done in pairwise fashion (default:  0)'
  type: boolean
  inputBinding:
    prefix: --pairwiseAlignments
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- filterBam
