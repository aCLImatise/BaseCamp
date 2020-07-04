version 1.0

task AddBwTrack.pl {
  input {
    String add_bw_track_do_tpl
  }
  command <<<
    add-bw-track.pl \
      ~{add_bw_track_do_tpl}
  >>>
  parameter_meta {
    add_bw_track_do_tpl: "[ --in <input_trackList.json> ]                    \ [ --out <output_trackList.json> ]                  \ --label <track_label>                              \ --bw_url <url_to_big_wig_file>                     \ [ --key <track_key> ]                              \ [ --category 'Category in JBrowse' ]               \ [ --plot ]                                         \ [ --bicolor_pivot <pivot_for_changing_colors> ]    \ [ --pos_color <color_for_positive_side_of_pivot> ] \ [ --neg_color <color_for_negative_side_of_pivot> ] \ [ --min_score <min_score> ]                        \ [ --max_score <max_score> ]                        \ [ --clip_marker_color <color> ]                    \ [ --bg_color <color> ]                             \ [ --height <value> ]                               \ [ -h|--help ]"
  }
}