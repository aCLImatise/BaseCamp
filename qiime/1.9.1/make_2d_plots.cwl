class: CommandLineTool
id: make_2d_plots.py.cwl
inputs:
- id: coord_fname
  doc: Input principal coordinates filepath (i.e., resulting file from principal_coordinates.py).  Alternatively,
    a directory containing multiple principal coordinates files for jackknifed PCoA
    results. [REQUIRED]
  type: string
  inputBinding:
    prefix: --coord_fname
- id: map_fname
  doc: Input metadata mapping filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --map_fname
outputs: []
cwlVersion: v1.1
baseCommand:
- make_2d_plots.py
