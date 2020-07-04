version 1.0

task AddBamTrack.pl {
  input {
    String add_bam_track_do_tpl
  }
  command <<<
    add-bam-track.pl \
      ~{add_bam_track_do_tpl}
  >>>
  parameter_meta {
    add_bam_track_do_tpl: "[ --in <input_trackList.json>  ]       \ [ --out <output_trackList.json>        \ --label <track_label>                  \ --bam_url <url_to_bam_file>            \ [ --key <track_key> ]                  \ [ --classname <css_class> ]            \ [ --bigwigCoverage <url_to_bw_file> ]                       \ [ --coverage ]                         \ [ --min_score <min_score> ]            \ [ --max_score <max_score> ]            \ [ --help ]"
  }
}