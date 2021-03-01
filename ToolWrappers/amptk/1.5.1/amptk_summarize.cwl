class: CommandLineTool
id: amptk_summarize.cwl
inputs:
- id: in_table
  doc: OTU Table containing Taxonomy information (Required)
  type: boolean?
  inputBinding:
    prefix: --table
- id: in_out
  doc: 'Base name for output files. Default: amptk-summary'
  type: boolean?
  inputBinding:
    prefix: --out
- id: in_counts
  doc: 'Method to count taxa. Default: binary [binary,actual]'
  type: boolean?
  inputBinding:
    prefix: --counts
- id: in_graphs
  doc: Create stacked Bar Graphs.
  type: boolean?
  inputBinding:
    prefix: --graphs
- id: in_format
  doc: 'Image output format. Default: eps [eps, svg, png, pdf]'
  type: boolean?
  inputBinding:
    prefix: --format
- id: in_percent
  doc: 'Convert numbers to Percent for Graphs. Default: off'
  type: boolean?
  inputBinding:
    prefix: --percent
- id: in_font_size
  doc: 'Adjust font size for X-axis sample lables. Default: 8'
  type: boolean?
  inputBinding:
    prefix: --font_size
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/amptk:1.5.1--py_1
cwlVersion: v1.1
baseCommand:
- amptk
- summarize
