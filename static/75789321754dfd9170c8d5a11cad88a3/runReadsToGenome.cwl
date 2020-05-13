class: CommandLineTool
id: runReadsToGenome.pl.cwl
inputs:
- id: min_in_del_candidate_depth
  doc: number gapped reads for indel candidates [3]
  type: long
  inputBinding:
    prefix: -min_indel_candidate_depth
- id: min_alt_bases
  doc: minimum number of alternate bases [3]
  type: boolean
  inputBinding:
    prefix: -min_alt_bases
- id: max_depth
  doc: maximum read depth [1000000]
  type: boolean
  inputBinding:
    prefix: -max_depth
- id: min_depth
  doc: minimum read depth [7]
  type: boolean
  inputBinding:
    prefix: -min_depth
- id: snp_gap_filter
  doc: SNP within INT bp around a gap to be filtered [3]
  type: boolean
  inputBinding:
    prefix: -snp_gap_filter
outputs: []
cwlVersion: v1.1
baseCommand:
- runReadsToGenome.pl
