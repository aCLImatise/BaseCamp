class: CommandLineTool
id: hicPlotSVL.cwl
inputs:
- id: in_matrices
  doc: "The matrix (or multiple matrices) to use for the\ncomparison"
  type: string[]
  inputBinding:
    prefix: --matrices
- id: in_plot_filename
  doc: 'Plot name (Default: plot.png).'
  type: File?
  inputBinding:
    prefix: --plotFileName
- id: in_out_filename
  doc: "File the p-values are written to, p-values are only\ncomputed if at least\
    \ two matrices are given (Default:\np_values.txt)."
  type: File?
  inputBinding:
    prefix: --outFileName
- id: in_out_filename_data
  doc: "File the computed ratios are written to (Default:\ndata.txt)."
  type: File?
  inputBinding:
    prefix: --outFileNameData
- id: in_distance
  doc: "Distance (in bp) which should be considered as short\nrange. Default 2MB (2000000)."
  type: long?
  inputBinding:
    prefix: --distance
- id: in_chromosomes
  doc: "Chromosomes to include in the analysis. If not set,\nall chromosomes are included."
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: in_threads
  doc: "Number of threads. Using the python multiprocessing\nmodule (Default: 4)."
  type: long?
  inputBinding:
    prefix: --threads
- id: in_dpi
  doc: "Optional parameter: Resolution for the image in case\ntheoutput is a raster\
    \ graphics image (e.g png, jpg)\n(Default: 300)."
  type: long?
  inputBinding:
    prefix: --dpi
- id: in_color_list
  doc: 'Colorlist for the boxplots (Default: g b c m y k).'
  type: string[]
  inputBinding:
    prefix: --colorList
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: "File the p-values are written to, p-values are only\ncomputed if at least\
    \ two matrices are given (Default:\np_values.txt)."
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
- id: out_out_filename_data
  doc: "File the computed ratios are written to (Default:\ndata.txt)."
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename_data)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hicexplorer:3.6--py_0
cwlVersion: v1.1
baseCommand:
- hicPlotSVL
