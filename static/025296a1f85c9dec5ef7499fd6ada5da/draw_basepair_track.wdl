version 1.0

task DrawBasepairTrack.pl {
  input {
    String? thickness
    String? width
    String? height
    Boolean? no_links
    String bin_slash_draw_base_pair_track_do_tpl
  }
  command <<<
    draw-basepair-track.pl \
      ~{bin_slash_draw_base_pair_track_do_tpl} \
      ~{if defined(thickness) then ("--thickness " +  '"' + thickness + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""} \
      ~{true="--nolinks" false="" no_links}
  >>>
  parameter_meta {
    thickness: "Thickness in pixels of the drawn lines. Defaults to 2."
    width: "Width in pixels of each image tile. Defaults to 2000."
    height: "Height in pixels of the image track. Defaults to 100."
    no_links: "If passed, do not use filesystem hardlinks to compress duplicate tiles."
    bin_slash_draw_base_pair_track_do_tpl: "--gff <GFF file>                      \ [ --out <JSON directory> ]            \ [ --tracklabel <track identifier> ]   \ [ --key <human-readable track name> ] \ [ --bgcolor <R,G,B> ]                 \ [ --fgcolor <R,G,B> ]                 \ [ --thickness <line thickness> ]      \ [ --width <tile width> ]              \ [ --height <tile height> ]            \ [ --nolinks ]"
  }
}