class: CommandLineTool
id: fancplot.cwl
inputs:
- id: in_plot
  doc: "New plot, type will be chosen automatically by file\ntype, unless \"-t\" is\
    \ provided."
  type: File?
  inputBinding:
    prefix: --plot
- id: in_output
  doc: "Suppresses interactive plotting window and redirects\nplot to file. Specify\
    \ path to file when plotting a\nsingle region, and path to a folder for plotting\n\
    multiple regions."
  type: File?
  inputBinding:
    prefix: --output
- id: in_script
  doc: Use a script file to define plot.
  type: File?
  inputBinding:
    prefix: --script
- id: in_name
  doc: "Plot name to be used as prefix when plotting multiple\nregions. Is ignored\
    \ for single region and interactive\nplot."
  type: string?
  inputBinding:
    prefix: --name
- id: in_width
  doc: 'Width of the figure in inches. Default: 4'
  type: long?
  inputBinding:
    prefix: --width
- id: in_window_size
  doc: "Plotting region size in base pairs. If provided, the\nactual size of the given\
    \ region is ignored and instead\na region <chromosome>:<region center - window\
    \ size/2>\n- <region center + window size/2> will be plotted."
  type: long?
  inputBinding:
    prefix: --window-size
- id: in_invert_x
  doc: Invert x-axis for this plot
  type: boolean?
  inputBinding:
    prefix: --invert-x
- id: in_tick_locations
  doc: "Manually define the locations of the tick labels on\nthe genome axis."
  type: string[]
  inputBinding:
    prefix: --tick-locations
- id: in_regions
  doc: "List of region selectors (<chr>:<start>-<end>) or\nfiles with region information\
    \ (BED, GTF, ...)."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fanc:0.9.0--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- fancplot
