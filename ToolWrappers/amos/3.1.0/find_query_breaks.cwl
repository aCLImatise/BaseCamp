class: CommandLineTool
id: find_query_breaks.cwl
inputs:
- id: in_minimum_length_alignment
  doc: 'Minimum length of alignment break to report (Default: 10)'
  type: long?
  inputBinding:
    prefix: -b
- id: in_minimum_distance_edge
  doc: 'Minimum distance to edge of reference sequence to report (Default: 0)'
  type: long?
  inputBinding:
    prefix: -w
- id: in_minimum_length_report
  doc: 'Minimum length of query sequence to report (Default: 0)'
  type: long?
  inputBinding:
    prefix: -l
- id: in_flag_broken_alignments
  doc: Flag broken alignments within this distance of reference
  type: string?
  inputBinding:
    prefix: -f
- id: in_flag_adjacent_alignments
  doc: Flag adjacent broken alignments from same query
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_only_show_collapses
  doc: Only show collapses
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_only_show_breaks
  doc: Only show alignment breaks
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_load_fix_regions
  doc: Load fix regions from all.feat and mark if fixed in -B breakreport
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_display_breaks_amos
  doc: Display breaks as AMOS features
  type: boolean?
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- find-query-breaks
