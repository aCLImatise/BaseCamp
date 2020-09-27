class: CommandLineTool
id: tadtool_plot.cwl
inputs:
- id: in_window_sizes
  doc: "Window sizes in base pairs used for TAD calculation.\nYou can pass (1) a filename\
    \ with whitespace-delimited\nwindow sizes, (2) three integers denoting start,\
    \ stop,\nand step size to generate a range of window sizes, or\n(3) more than\
    \ three integers to define window sizes\ndirectly. If left at default, window\
    \ sizes will be\nlogarithmically spaced between 10**4 and 10**6, or\n10**6.5 for\
    \ the insulation and directionality index,\nrespectively."
  type: string[]
  inputBinding:
    prefix: --window-sizes
- id: in_algorithm
  doc: "TAD-calling algorithm. Options: insulation,\nninsulation, directionality.\
    \ Default: insulation."
  type: string
  inputBinding:
    prefix: --algorithm
- id: in_max_distance
  doc: "Maximum distance in base-pairs away from the diagonal\nto be shown in Hi-C\
    \ plot. Defaults to half the\nplotting window."
  type: long
  inputBinding:
    prefix: --max-distance
- id: in_normalisation_window
  doc: "Normalisation window in number of regions. Only\naffects ninsulation algorithm.\
    \ If not specified,\nwindow will be the whole chromosome."
  type: long
  inputBinding:
    prefix: --normalisation-window
- id: in_data
  doc: "Matrix with index data. Rows correspond to window\nsizes, columns to Hi-C\
    \ matrix bins. If provided,\nsuppresses inbuilt index calculation.\n"
  type: string
  inputBinding:
    prefix: --data
- id: in_matrix
  doc: "Square Hi-C Matrix as tab-delimited or .npy file\n(created with numpy.save)\
    \ or sparse matrix format\n(each line: <row region index> <column region index>\n\
    <matrix value>)"
  type: string
  inputBinding:
    position: 0
- id: in_regions
  doc: "BED file (no header) with regions corresponding to the\nnumber of rows in\
    \ the provided matrix. Fourth column,\nif present, denotes name field, which is\
    \ used as an\nidentifier in sparse matrix notation."
  type: string
  inputBinding:
    position: 1
- id: in_plotting_region
  doc: "Region of the Hi-C matrix to display in plot. Format:\n<chromosome>:<start>-<end>,\
    \ e.g.\nchr12:31000000-33000000"
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tadtool
- plot
