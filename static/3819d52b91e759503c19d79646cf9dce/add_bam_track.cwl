class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/add_bam_track.pl.cwl
inputs:
- id: add_bam_track_do_tpl
  doc: '[ --in <input_trackList.json>  ]       \ [ --out <output_trackList.json>        \
    --label <track_label>                  \ --bam_url <url_to_bam_file>            \
    [ --key <track_key> ]                  \ [ --classname <css_class> ]            \
    [ --bigwigCoverage <url_to_bw_file> ]                       \ [ --coverage ]                         \
    [ --min_score <min_score> ]            \ [ --max_score <max_score> ]            \
    [ --help ]'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- add-bam-track.pl
