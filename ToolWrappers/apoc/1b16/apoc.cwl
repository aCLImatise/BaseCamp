class: CommandLineTool
id: apoc.cwl
inputs:
- id: in_fa
  doc: 'Global structure alignment: 1 - enable (default), 0 - disable.'
  type: long
  inputBinding:
    prefix: -fa
- id: in_lt
  doc: Provide a list of templates to compare in a file.
  type: File
  inputBinding:
    prefix: -lt
- id: in_lq
  doc: Provide a list of queries (targets) to compare in a file.
  type: File
  inputBinding:
    prefix: -lq
- id: in_pt
  doc: "<str1,str2,...>\nNames of pockets in the first (template) structure for comparison."
  type: boolean
  inputBinding:
    prefix: -pt
- id: in_pq
  doc: "<str1,str2,...>\nNames of pockets in the second (query) structure for comparison."
  type: boolean
  inputBinding:
    prefix: -pq
- id: in_block
  doc: Load a block of concatenated pdb files.
  type: File
  inputBinding:
    prefix: -block
- id: in_p_vol
  doc: Minimal pocket volume in grid points. Default 100
  type: long
  inputBinding:
    prefix: -pvol
- id: in_plen
  doc: Minimal number of pocket residues. Default 10
  type: long
  inputBinding:
    prefix: -plen
- id: in_sod
  doc: Restrict to sequence-order-dependent alignment. Default no restriction.
  type: boolean
  inputBinding:
    prefix: -sod
- id: in_alignment_printout_none
  doc: 'Alignment printout: 0 - none, 1 - concise, 2 - detailed (default).'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_similarity_scoring_metric
  doc: 'Similarity scoring metric:  tm (TM-score), ps (PS-score, default).'
  type: string
  inputBinding:
    prefix: -m
- id: in_normalize_score_fixed
  doc: Normalize the score with a fixed length specified by num.
  type: long
  inputBinding:
    prefix: -L
- id: in_normalize_score_average
  doc: Normalize the score by the average size of two structures.
  type: boolean
  inputBinding:
    prefix: -a
- id: in_normalize_score_minimum
  doc: Normalize the score by the minimum size of two structures.
  type: boolean
  inputBinding:
    prefix: -b
- id: in_normalize_score_maximum
  doc: "Normalize the score by the maximum size of two structures.\n"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_pdb_file_one
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_pdb_file_two
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- apoc
