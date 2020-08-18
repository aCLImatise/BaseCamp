class: CommandLineTool
id: ../../../find_query_breaks.cwl
inputs:
- id: minimum_length_alignment_report_default
  doc: 'Minimum length of alignment break to report (Default: 10)'
  type: string
  inputBinding:
    prefix: -b
- id: minimum_distance_edge
  doc: 'Minimum distance to edge of reference sequence to report (Default: 0)'
  type: string
  inputBinding:
    prefix: -w
- id: minimum_length_query_report_default
  doc: 'Minimum length of query sequence to report (Default: 0)'
  type: string
  inputBinding:
    prefix: -l
- id: flag_broken_alignments
  doc: Flag broken alignments within this distance of reference
  type: string
  inputBinding:
    prefix: -f
- id: flag_adjacent_broken
  doc: Flag adjacent broken alignments from same query
  type: boolean
  inputBinding:
    prefix: -s
- id: only_show_collapses
  doc: Only show collapses
  type: boolean
  inputBinding:
    prefix: -C
- id: only_show_breaks
  doc: Only show alignment breaks
  type: boolean
  inputBinding:
    prefix: -B
- id: load_fix_regions
  doc: Load fix regions from all.feat and mark if fixed in -B breakreport
  type: boolean
  inputBinding:
    prefix: -c
- id: display_breaks_features
  doc: Display breaks as AMOS features
  type: boolean
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- find-query-breaks
