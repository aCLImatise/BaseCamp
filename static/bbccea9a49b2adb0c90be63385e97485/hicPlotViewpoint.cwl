class: CommandLineTool
id: hicPlotViewpoint.cwl
inputs:
- id: in_matrix
  doc: Hi-C matrix to plot.
  type: string[]
  inputBinding:
    prefix: --matrix
- id: in_region
  doc: The format is chr:start-end.
  type: string?
  inputBinding:
    prefix: --region
- id: in_out_filename
  doc: File name of the image to save.
  type: File?
  inputBinding:
    prefix: --outFileName
- id: in_reference_point
  doc: "Reference point. Needs to be in the format: 'chr:100'\nfor a single reference\
    \ point or 'chr:100-200' for a\nreference region."
  type: long?
  inputBinding:
    prefix: --referencePoint
- id: in_chromosome
  doc: "Optional parameter: Only show results for this\nchromosome."
  type: string?
  inputBinding:
    prefix: --chromosome
- id: in_interaction_out_filename
  doc: "Optional parameter: If set, a bedgraph file with all\ninteraction will be\
    \ created."
  type: File?
  inputBinding:
    prefix: --interactionOutFileName
- id: in_dpi
  doc: "Optional parameter: Resolution for the image in case\ntheouput is a raster\
    \ graphics image (e.g png, jpg)\n(Default: 300)."
  type: long?
  inputBinding:
    prefix: --dpi
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: File name of the image to save.
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
- id: out_interaction_out_filename
  doc: "Optional parameter: If set, a bedgraph file with all\ninteraction will be\
    \ created."
  type: File?
  outputBinding:
    glob: $(inputs.in_interaction_out_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hicexplorer:3.6--py_0
cwlVersion: v1.1
baseCommand:
- hicPlotViewpoint
