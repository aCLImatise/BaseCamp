class: CommandLineTool
id: show_coords.cwl
inputs:
- id: in_merges_overlapping_alignments
  doc: "Merges overlapping alignments regardless of match dir\nor frame and does not\
    \ display any idenitity information."
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_switch_output_btab
  doc: Switch output to btab format
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_include_percent_coverage
  doc: Include percent coverage information in the output
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_display_alignment_direction
  doc: "Display the alignment direction in the additional\nFRM columns (default for\
    \ promer)"
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_deprecated_option_use
  doc: Deprecated option. Please use 'delta-filter' instead
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_print_output_header
  doc: Do not print the output header
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_set_minimum_percent
  doc: Set minimum percent identity to display
  type: double?
  inputBinding:
    prefix: -I
- id: in_knockout_display_alignments
  doc: "Knockout (do not display) alignments that overlap\nanother alignment in a\
    \ different frame by more than 50%\nof their length, AND have a smaller percent\
    \ similarity\nor are less than 75% of the size of the other alignment\n(promer\
    \ only)"
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_include_length_information
  doc: Include the sequence length information in the output
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_set_minimum_alignment
  doc: Set minimum alignment length to display
  type: long?
  inputBinding:
    prefix: -L
- id: in_annotate_maximal_alignments
  doc: "Annotate maximal alignments between two sequences, i.e.\noverlaps between\
    \ reference and query sequences"
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_sort_output_lines_query
  doc: Sort output lines by query IDs and coordinates
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_sort_output_lines_reference
  doc: Sort output lines by reference IDs and coordinates
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_switch_output_tabdelimited
  doc: "Switch output to tab-delimited format\nInput is the .delta output of either\
    \ the \"nucmer\" or the"
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_delta_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- show-coords
