#!/usr/bin/env cwl-runner

baseCommand:
- make_emperor.py
class: CommandLineTool
cwlVersion: v1.0
id: make_emperor.py
inputs:
- doc: "Depending on the plot to be generated, can be one of the following: (1) Filepath\
    \ of a coordinates file to create a PCoA plot. (2) Directory path to a folder\
    \ containing coordinates files to create a jackknifed PCoA plot. (3) Directory\
    \ path to a folder containing coordinates files to compare the coordinates there\
    \ contained when --compare_plots is enabled (useful for procustes analysis plots).\
    \ For directories: hidden files, sub-directories and files suffixed as '_procrustes_results.txt'\
    \ [REQUIRED]"
  id: input_coords
  inputBinding:
    prefix: --input_coords
  type: string
- doc: path to a metadata mapping file [REQUIRED]
  id: map_fp
  inputBinding:
    prefix: --map_fp
  type: string
