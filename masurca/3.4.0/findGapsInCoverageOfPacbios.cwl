#!/usr/bin/env cwl-runner

baseCommand:
- findGapsInCoverageOfPacbios
class: CommandLineTool
cwlVersion: v1.0
id: findgapsincoverageofpacbios
inputs:
- doc: ''
  id: cmdline_parse
  inputBinding:
    position: 0
  type: string
- doc: '*Pacbio read-super-read match file'
  id: input_file
  inputBinding:
    prefix: --input-file
  type: File
- doc: Shorter matches between good-overlap regions are considered a gap (70)
  id: max_gap_overlap
  inputBinding:
    prefix: --max-gap-overlap
  type: long
- doc: Implied overlaps which overlap good match regions by less than this are not
    processed (100)
  id: min_ovl_implied_vs_gap_end
  inputBinding:
    prefix: --min-ovl-implied-vs-gap-end
  type: long
- doc: Will not use implied matches of matches whose actual match is shorter than
    this (30)
  id: min_match_len_for_implied_match
  inputBinding:
    prefix: --min-match-len-for-implied-match
  type: long
