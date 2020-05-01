#!/usr/bin/env cwl-runner

baseCommand:
- scree_plot_pyseer
class: CommandLineTool
cwlVersion: v1.0
id: scree_plot_pyseer
inputs:
- doc: Strains distance square matrix
  id: distances
  inputBinding:
    position: 0
  type: string
- doc: 'Maximum dimensions to plot [Default: 30]'
  id: max_dimensions
  inputBinding:
    prefix: --max-dimensions
  type: long
- doc: 'Plot filename [Default: scree_plot.png]'
  id: output
  inputBinding:
    prefix: --output
  type: string
