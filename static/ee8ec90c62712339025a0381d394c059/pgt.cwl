class: CommandLineTool
id: pgt.cwl
inputs:
- id: tracks
  doc: File containing the instructions to plot the tracks. The tracks.ini file can
    be genarated using the `make_tracks_file` program.
  type: string
  inputBinding:
    prefix: --tracks
- id: region
  doc: Region to plot, the format is chr:start-end
  type: string
  inputBinding:
    prefix: --region
- id: bed
  doc: Instead of a region, a file containing the regions to plot, in BED format,
    can be given. If this is the case, multiple files will be created using a prefix
    the value of --outFileName
  type: string
  inputBinding:
    prefix: --BED
- id: width
  doc: figure width in centimeters
  type: string
  inputBinding:
    prefix: --width
- id: height
  doc: Figure height in centimeters. If not given, the figure height is computed based
    on the heights of the tracks. If given, the track height are proportionally scaled
    to match the desired figure height.
  type: string
  inputBinding:
    prefix: --height
- id: title
  doc: Plot title
  type: string
  inputBinding:
    prefix: --title
- id: out_filename
  doc: File name to save the image, file prefix in case multiple images are stored
  type: string
  inputBinding:
    prefix: --outFileName
- id: font_size
  doc: Font size for the labels of the plot
  type: string
  inputBinding:
    prefix: --fontSize
- id: dpi
  doc: Resolution for the image in case the ouput is a raster graphics image (e.g
    png, jpg)
  type: string
  inputBinding:
    prefix: --dpi
- id: track_label_fraction
  doc: By default the space dedicated to the track labels is 0.05 of the plot width.
    This fraction can be changed with this parameter if needed.
  type: string
  inputBinding:
    prefix: --trackLabelFraction
- id: track_label_halign
  doc: By default, the horizontal alignment of the track labels is left. This alignemnt
    can be changed to right or center.
  type: string
  inputBinding:
    prefix: --trackLabelHAlign
outputs: []
cwlVersion: v1.1
baseCommand:
- pgt
