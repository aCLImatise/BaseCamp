version 1.0

task Drawbasepairtrackpl {
  input {
    Directory? out
    File? track_label
    String? key
    Boolean? bgcolor
    Boolean? fg_color
    Int? thickness
    Int? width
    Int? height
    Boolean? no_links
  }
  command <<<
    draw_basepair_track_pl \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(track_label) then ("--trackLabel " +  '"' + track_label + '"') else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if (bgcolor) then "--bgcolor" else ""} \
      ~{if (fg_color) then "--fgcolor" else ""} \
      ~{if defined(thickness) then ("--thickness " +  '"' + thickness + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""} \
      ~{if (no_links) then "--nolinks" else ""}
  >>>
  parameter_meta {
    out: "Data directory to write to. Defaults to \\\"data/\\\"."
    track_label: "Unique name for the track. Defaults to the wiggle filename."
    key: "Human-readable name for the track. Defaults to be the same as the\\n\\\"--trackLabel\\\"."
    bgcolor: "<R,G,B>\\nBackground color for the image track. Defaults to \\\"255,255,255\\\",\\nwhich is white."
    fg_color: "<R,G,B>\\nForeground color for the track, i.e. the color of the lines that are\\ndrawn. Defaults to \\\"0,255,0\\\", which is bright green."
    thickness: "Thickness in pixels of the drawn lines. Defaults to 2."
    width: "Width in pixels of each image tile. Defaults to 2000."
    height: "Height in pixels of the image track. Defaults to 100."
    no_links: "If passed, do not use filesystem hardlinks to compress duplicate\\ntiles.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}