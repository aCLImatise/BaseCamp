class: CommandLineTool
id: filterPSL.pl.cwl
inputs:
- id: in_pair_bed
  doc: "file name of pairedness coverage:\na .bed format file in which for each position\
    \ the number of filtered\nread pairs is reported that contain the position in\
    \ or between the reads"
  type: long?
  inputBinding:
    prefix: --pairbed
- id: in_mini_d
  doc: minimal percentage of identity (default 92)
  type: long?
  inputBinding:
    prefix: --minId
- id: in_min_cover
  doc: minimal percentage of coverage of the query read (default 80)
  type: long?
  inputBinding:
    prefix: --minCover
- id: in_uniq
  doc: take only best match and only, when second best is much worse (default false)
  type: boolean?
  inputBinding:
    prefix: --uniq
- id: in_uniq_thresh
  doc: threshold % for uniq, second best must be at most this fraction of best (default
    .96)
  type: boolean?
  inputBinding:
    prefix: --uniqthresh
- id: in_best
  doc: output all best matches that satisfy minId and minCover
  type: boolean?
  inputBinding:
    prefix: --best
- id: in_common_gene_file
  doc: file name in which to write cases where one read maps to several different
    genes
  type: File?
  inputBinding:
    prefix: --commongenefile
- id: in_no_introns
  doc: do not allow longer gaps (for RNA-RNA alignments)
  type: boolean?
  inputBinding:
    prefix: --nointrons
- id: in_paired
  doc: require that paired reads are on opposite strands of same target(default false)
  type: boolean?
  inputBinding:
    prefix: --paired
- id: in_max_intron_len
  doc: maximal separation of paired reads (default 500000
  type: long?
  inputBinding:
    prefix: --maxintronlen
- id: in_verbose
  doc: output debugging info (default false)
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- filterPSL.pl
