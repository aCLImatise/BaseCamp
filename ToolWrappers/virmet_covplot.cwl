class: CommandLineTool
id: virmet_covplot.cwl
inputs:
- id: in_outdir
  doc: path to sample results directory
  type: File
  inputBinding:
    prefix: --outdir
- id: in_organism
  doc: name of the organism as reported in orgs_list.tsv file
  type: File
  inputBinding:
    prefix: --organism
- id: in_vir_met
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_cov_plot
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- virmet
- covplot
