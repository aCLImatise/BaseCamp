version 1.0

task HicPlotTADs {
  input {
    String? tracks
    String? region
    String? bed
    String? width
    String? height
    String? title
    String? out_filename
    String? font_size
    String? dpi
    String? track_label_fraction
    String? track_label_halign
    Boolean? decreasing_x_axis
  }
  command <<<
    hicPlotTADs \
      ~{if defined(tracks) then ("--tracks " +  '"' + tracks + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(bed) then ("--BED " +  '"' + bed + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(font_size) then ("--fontSize " +  '"' + font_size + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(track_label_fraction) then ("--trackLabelFraction " +  '"' + track_label_fraction + '"') else ""} \
      ~{if defined(track_label_halign) then ("--trackLabelHAlign " +  '"' + track_label_halign + '"') else ""} \
      ~{true="--decreasingXAxis" false="" decreasing_x_axis}
  >>>
  parameter_meta {
    tracks: "File containing the instructions to plot the tracks. The tracks.ini file can be genarated using the `make_tracks_file` program."
    region: "Region to plot, the format is chr:start-end"
    bed: "Instead of a region, a file containing the regions to plot, in BED format, can be given. If this is the case, multiple files will be created using a prefix the value of --outFileName"
    width: "figure width in centimeters (default is 40)"
    height: "Figure height in centimeters. If not given, the figure height is computed based on the heights of the tracks. If given, the track height are proportionally scaled to match the desired figure height."
    title: "Plot title"
    out_filename: "File name to save the image, file prefix in case multiple images are stored"
    font_size: "Font size for the labels of the plot (default is 0.3 * figure width)"
    dpi: "Resolution for the image in case the ouput is a raster graphics image (e.g png, jpg) (default is 72)"
    track_label_fraction: "By default the space dedicated to the track labels is 0.05 of the plot width. This fraction can be changed with this parameter if needed."
    track_label_halign: "By default, the horizontal alignment of the track labels is left. This alignemnt can be changed to right or center."
    decreasing_x_axis: "By default, the x-axis is increasing. Use this option if you want to see all tracks with a decreasing x-axis."
  }
}