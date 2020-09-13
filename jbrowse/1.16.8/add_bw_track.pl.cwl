class: CommandLineTool
id: ../../../add_bw_track.pl.cwl
inputs:
- id: in_bicolor_pivot
  doc: "point where to set pivot for color changes - can be \"mean\", \"zero\",\n\
    or a numeric value [default: zero]"
  type: string
  inputBinding:
    prefix: --bicolor_pivot
- id: in_plot
  doc: display as XY plot instead of density heatmap
  type: boolean
  inputBinding:
    prefix: --plot
- id: in_pos_color
  doc: 'CSS color for positive side of pivot [default: blue]'
  type: string
  inputBinding:
    prefix: --pos_color
- id: in_neg_color
  doc: 'CSS color for negative side of pivot [default: red]'
  type: string
  inputBinding:
    prefix: --neg_color
- id: in_in
  doc: 'input trackList.json file. Default: data/trackList.json.'
  type: File
  inputBinding:
    prefix: --in
- id: in_out
  doc: 'Output trackList.json file. Default: data/trackList.json.'
  type: File
  inputBinding:
    prefix: --out
- id: in_bw_url
  doc: URL to BigWig file (can be relative to the trackList.json)
  type: File
  inputBinding:
    prefix: --bw_url
- id: in_label
  doc: unique track label for the new track.
  type: string
  inputBinding:
    prefix: --label
- id: in_key
  doc: 'key (display name) for track [default: label value]'
  type: string
  inputBinding:
    prefix: --key
- id: in_category
  doc: "\"Category Name / Subcategory Name\"\ntrack category. Used by the default\
    \ Hierarchical track selector."
  type: boolean
  inputBinding:
    prefix: --category
- id: in_classname
  doc: 'CSS class for display [default: bam]'
  type: string
  inputBinding:
    prefix: --classname
- id: in_mismatches
  doc: display mismatches in alignment (generates no subfeatures)
  type: boolean
  inputBinding:
    prefix: --mismatches
- id: in_coverage
  doc: display coverage data instead of alignments
  type: boolean
  inputBinding:
    prefix: --coverage
- id: in_min_score
  doc: optional minimum score to be graphed
  type: string
  inputBinding:
    prefix: --min_score
- id: in_max_score
  doc: optional maximum score to be graphed
  type: string
  inputBinding:
    prefix: --max_score
- id: in_clip_marker_color
  doc: optional clip marker color
  type: string
  inputBinding:
    prefix: --clip_marker_color
- id: in_bg_color
  doc: optional background color
  type: string
  inputBinding:
    prefix: --bg_color
- id: in_height
  doc: optional height
  type: string
  inputBinding:
    prefix: --height
- id: in_config
  doc: "'{ \"my_key\": \"my_value\", ... }'\noptional additional data to include in\
    \ the track configuration. Any\nvalues provided here will override the values\
    \ generated by the rest\nof the script.\n"
  type: boolean
  inputBinding:
    prefix: --config
- id: in_add_bw_track_do_tpl
  doc: "[ --in <input_trackList.json> ]                    \\\n[ --out <output_trackList.json>\
    \ ]                  \\\n--label <track_label>                              \\\
    \n--bw_url <url_to_big_wig_file>                     \\\n[ --key <track_key> ]\
    \                              \\\n[ --category 'Category in JBrowse' ]      \
    \         \\\n[ --plot ]                                         \\\n[ --bicolor_pivot\
    \ <pivot_for_changing_colors> ]    \\\n[ --pos_color <color_for_positive_side_of_pivot>\
    \ ] \\\n[ --neg_color <color_for_negative_side_of_pivot> ] \\\n[ --min_score <min_score>\
    \ ]                        \\\n[ --max_score <max_score> ]                   \
    \     \\\n[ --clip_marker_color <color> ]                    \\\n[ --bg_color\
    \ <color> ]                             \\\n[ --height <value> ]             \
    \                  \\\n[ -h|--help ]"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: 'Output trackList.json file. Default: data/trackList.json.'
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- add-bw-track.pl
