class: CommandLineTool
id: pyGenomeTracks.cwl
inputs:
- id: in_tracks
  doc: "File containing the instructions to plot the tracks.\nThe tracks.ini file\
    \ can be genarated using the\n`make_tracks_file` program."
  type: File?
  inputBinding:
    prefix: --tracks
- id: in_region
  doc: Region to plot, the format is chr:start-end
  type: string?
  inputBinding:
    prefix: --region
- id: in_bed
  doc: "Instead of a region, a file containing the regions to\nplot, in BED format,\
    \ can be given. If this is the\ncase, multiple files will be created using a prefix\n\
    the value of --outFileName"
  type: File?
  inputBinding:
    prefix: --BED
- id: in_width
  doc: figure width in centimeters (default is 40)
  type: long?
  inputBinding:
    prefix: --width
- id: in_height
  doc: "Figure height in centimeters. If not given, the figure\nheight is computed\
    \ based on the heights of the tracks.\nIf given, the track height are proportionally\
    \ scaled\nto match the desired figure height."
  type: string?
  inputBinding:
    prefix: --height
- id: in_title
  doc: Plot title
  type: string?
  inputBinding:
    prefix: --title
- id: in_out_filename
  doc: "File name to save the image, file prefix in case\nmultiple images are stored"
  type: File?
  inputBinding:
    prefix: --outFileName
- id: in_font_size
  doc: "Font size for the labels of the plot (default is 0.3 *\nfigure width)"
  type: long?
  inputBinding:
    prefix: --fontSize
- id: in_dpi
  doc: "Resolution for the image in case the ouput is a raster\ngraphics image (e.g\
    \ png, jpg) (default is 72)"
  type: long?
  inputBinding:
    prefix: --dpi
- id: in_track_label_fraction
  doc: "By default the space dedicated to the track labels is\n0.05 of the plot width.\
    \ This fraction can be changed\nwith this parameter if needed."
  type: double?
  inputBinding:
    prefix: --trackLabelFraction
- id: in_track_label_halign
  doc: "By default, the horizontal alignment of the track\nlabels is left. This alignemnt\
    \ can be changed to right\nor center."
  type: string?
  inputBinding:
    prefix: --trackLabelHAlign
- id: in_decreasing_x_axis
  doc: "By default, the x-axis is increasing. Use this option\nif you want to see\
    \ all tracks with a decreasing\nx-axis."
  type: boolean?
  inputBinding:
    prefix: --decreasingXAxis
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: "File name to save the image, file prefix in case\nmultiple images are stored"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
hints: []
cwlVersion: v1.1
baseCommand:
- pyGenomeTracks
