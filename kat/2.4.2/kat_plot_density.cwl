#!/usr/bin/env cwl-runner

baseCommand:
- kat_plot_density
class: CommandLineTool
cwlVersion: v1.0
id: kat_plot_density
inputs:
- doc: The input matrix file from KAT
  id: matrix_file
  inputBinding:
    position: 0
  type: string
- doc: Don't rasterise graphics (slower).
  id: not_raster_is_ed
  inputBinding:
    prefix: --not_rasterised
  type: boolean
- doc: Resolution in dots per inch of output graphic.
  id: dpi
  inputBinding:
    prefix: --dpi
  type: string
- doc: Print extra information
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
