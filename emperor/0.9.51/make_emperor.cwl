class: CommandLineTool
id: make_emperor.py.cwl
inputs:
- id: input_coords
  doc: "Depending on the plot to be generated, can be one of the following: (1) Filepath\
    \ of a coordinates file to create a PCoA plot. (2) Directory path to a folder\
    \ containing coordinates files to create a jackknifed PCoA plot. (3) Directory\
    \ path to a folder containing coordinates files to compare the coordinates there\
    \ contained when --compare_plots is enabled (useful for procustes analysis plots).\
    \ For directories: hidden files, sub-directories and files suffixed as '_procrustes_results.txt'\
    \ [REQUIRED]"
  type: string
  inputBinding:
    prefix: --input_coords
- id: map_fp
  doc: path to a metadata mapping file [REQUIRED]
  type: string
  inputBinding:
    prefix: --map_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- make_emperor.py
