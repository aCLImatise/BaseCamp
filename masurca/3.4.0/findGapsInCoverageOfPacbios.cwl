class: CommandLineTool
id: findGapsInCoverageOfPacbios.cwl
inputs:
- id: cmdline_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_file
  doc: '*Pacbio read-super-read match file'
  type: File
  inputBinding:
    prefix: --input-file
- id: max_gap_overlap
  doc: Shorter matches between good-overlap regions are considered a gap (70)
  type: long
  inputBinding:
    prefix: --max-gap-overlap
- id: min_ovl_implied_vs_gap_end
  doc: Implied overlaps which overlap good match regions by less than this are not
    processed (100)
  type: long
  inputBinding:
    prefix: --min-ovl-implied-vs-gap-end
- id: min_match_len_for_implied_match
  doc: Will not use implied matches of matches whose actual match is shorter than
    this (30)
  type: long
  inputBinding:
    prefix: --min-match-len-for-implied-match
outputs: []
cwlVersion: v1.1
baseCommand:
- findGapsInCoverageOfPacbios
