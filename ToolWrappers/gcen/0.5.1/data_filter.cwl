class: CommandLineTool
id: data_filter.cwl
inputs:
- id: in_cut_off_mean
  doc: 'mean cutoff of gene expression (default: 0.0)'
  type: File?
  inputBinding:
    prefix: --cutoff_mean
- id: in_cut_off_sd
  doc: 'standard deviation cutoff of gene expression (default: 0.0)'
  type: long?
  inputBinding:
    prefix: --cutoff_sd
- id: in_percent_mean
  doc: 'keep a proportion of total genes based mean of gene expression (default: 1.0)'
  type: long?
  inputBinding:
    prefix: --percent_mean
- id: in_percent_sd
  doc: 'keep a proportion of total genes based standard deviation of gene expression
    (default: 1.0)'
  type: long?
  inputBinding:
    prefix: --percent_sd
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gcen:0.5.1--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- data_filter
