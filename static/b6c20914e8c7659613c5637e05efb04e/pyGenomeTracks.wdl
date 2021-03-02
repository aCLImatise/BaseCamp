version 1.0

task PyGenomeTracks {
  input {
    File? tracks
    String? region
    File? bed
    Int? width
    String? height
    String? title
    File? out_filename
    Int? font_size
    Int? dpi
    Float? track_label_fraction
    String? track_label_halign
    Boolean? decreasing_x_axis
  }
  command <<<
    pyGenomeTracks \
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
      ~{if (decreasing_x_axis) then "--decreasingXAxis" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tracks: "File containing the instructions to plot the tracks.\\nThe tracks.ini file can be genarated using the\\n`make_tracks_file` program."
    region: "Region to plot, the format is chr:start-end"
    bed: "Instead of a region, a file containing the regions to\\nplot, in BED format, can be given. If this is the\\ncase, multiple files will be created using a prefix\\nthe value of --outFileName"
    width: "figure width in centimeters (default is 40)"
    height: "Figure height in centimeters. If not given, the figure\\nheight is computed based on the heights of the tracks.\\nIf given, the track height are proportionally scaled\\nto match the desired figure height."
    title: "Plot title"
    out_filename: "File name to save the image, file prefix in case\\nmultiple images are stored"
    font_size: "Font size for the labels of the plot (default is 0.3 *\\nfigure width)"
    dpi: "Resolution for the image in case the ouput is a raster\\ngraphics image (e.g png, jpg) (default is 72)"
    track_label_fraction: "By default the space dedicated to the track labels is\\n0.05 of the plot width. This fraction can be changed\\nwith this parameter if needed."
    track_label_halign: "By default, the horizontal alignment of the track\\nlabels is left. This alignemnt can be changed to right\\nor center."
    decreasing_x_axis: "By default, the x-axis is increasing. Use this option\\nif you want to see all tracks with a decreasing\\nx-axis."
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}