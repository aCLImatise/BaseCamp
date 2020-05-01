#!/usr/bin/env cwl-runner

baseCommand:
- pgt
class: CommandLineTool
cwlVersion: v1.0
id: pgt
inputs:
- doc: File containing the instructions to plot the tracks. The tracks.ini file can
    be genarated using the `make_tracks_file` program.
  id: tracks
  inputBinding:
    prefix: --tracks
  type: string
- doc: Region to plot, the format is chr:start-end
  id: region
  inputBinding:
    prefix: --region
  type: string
- doc: Instead of a region, a file containing the regions to plot, in BED format,
    can be given. If this is the case, multiple files will be created using a prefix
    the value of --outFileName
  id: bed
  inputBinding:
    prefix: --BED
  type: string
- doc: figure width in centimeters
  id: width
  inputBinding:
    prefix: --width
  type: string
- doc: Figure height in centimeters. If not given, the figure height is computed based
    on the heights of the tracks. If given, the track height are proportionally scaled
    to match the desired figure height.
  id: height
  inputBinding:
    prefix: --height
  type: string
- doc: Plot title
  id: title
  inputBinding:
    prefix: --title
  type: string
- doc: File name to save the image, file prefix in case multiple images are stored
  id: out_filename
  inputBinding:
    prefix: --outFileName
  type: string
- doc: Font size for the labels of the plot
  id: font_size
  inputBinding:
    prefix: --fontSize
  type: string
- doc: Resolution for the image in case the ouput is a raster graphics image (e.g
    png, jpg)
  id: dpi
  inputBinding:
    prefix: --dpi
  type: string
- doc: By default the space dedicated to the track labels is 0.05 of the plot width.
    This fraction can be changed with this parameter if needed.
  id: track_label_fraction
  inputBinding:
    prefix: --trackLabelFraction
  type: string
- doc: By default, the horizontal alignment of the track labels is left. This alignemnt
    can be changed to right or center.
  id: track_label_halign
  inputBinding:
    prefix: --trackLabelHAlign
  type: string
