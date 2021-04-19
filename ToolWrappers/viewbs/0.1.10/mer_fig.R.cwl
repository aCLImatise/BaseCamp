class: CommandLineTool
id: mer_fig.R.cwl
inputs:
- id: in_input
  doc: "[required]\n- RDS files. <fig1.rds,fig2.rds...>"
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_labels
  doc: "[optional]\n- Labesl for each figure. Default: <A,B,C,D...>"
  type: boolean?
  inputBinding:
    prefix: --labels
- id: in_output
  doc: "[optional]\n- Output files for the graph. Default: cowplot_mer_fig.pdf"
  type: boolean?
  inputBinding:
    prefix: --output
- id: in_ncol
  doc: "[optional]\n- Number of columns on the graph."
  type: boolean?
  inputBinding:
    prefix: --ncol
- id: in_base_height
  doc: "[optional]\n- The height (in inches) of each sub-plot"
  type: boolean?
  inputBinding:
    prefix: --base_height
- id: in_base_aspect_ratio
  doc: "[optional]\n-  The aspect ratio of each sub-plot. Default: 1.6\n"
  type: boolean?
  inputBinding:
    prefix: --base_aspect_ratio
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/viewbs:0.1.10--pl5262h779adbc_0
cwlVersion: v1.1
baseCommand:
- mer_fig.R
