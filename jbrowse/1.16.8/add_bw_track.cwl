class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/add_bw_track.pl.cwl
inputs:
- id: add_bw_track_do_tpl
  doc: "[ --in <input_trackList.json> ]                    \\ [ --out <output_trackList.json>\
    \ ]                  \\ --label <track_label>                              \\\
    \ --bw_url <url_to_big_wig_file>                     \\ [ --key <track_key> ]\
    \                              \\ [ --category 'Category in JBrowse' ]       \
    \        \\ [ --plot ]                                         \\ [ --bicolor_pivot\
    \ <pivot_for_changing_colors> ]    \\ [ --pos_color <color_for_positive_side_of_pivot>\
    \ ] \\ [ --neg_color <color_for_negative_side_of_pivot> ] \\ [ --min_score <min_score>\
    \ ]                        \\ [ --max_score <max_score> ]                    \
    \    \\ [ --clip_marker_color <color> ]                    \\ [ --bg_color <color>\
    \ ]                             \\ [ --height <value> ]                      \
    \         \\ [ -h|--help ]"
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- add-bw-track.pl
