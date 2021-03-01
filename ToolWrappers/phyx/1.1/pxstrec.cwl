class: CommandLineTool
id: pxstrec.cwl
inputs:
- id: in_data_f
  doc: input data file
  type: File?
  inputBinding:
    prefix: --dataf
- id: in_data_wide
  doc: data is in wide format so (001 instead of 2)
  type: boolean?
  inputBinding:
    prefix: --datawide
- id: in_data_z
  doc: data is in probability format (0,1,0,0)
  type: boolean?
  inputBinding:
    prefix: --dataz
- id: in_tree_f
  doc: input tree file
  type: File?
  inputBinding:
    prefix: --treef
- id: in_conf
  doc: configuration file
  type: File?
  inputBinding:
    prefix: --conf
- id: in_out_an_c
  doc: output file for ancestral calc
  type: File?
  inputBinding:
    prefix: --outanc
- id: in_out_st_num
  doc: output file for stochastic mapping number
  type: File?
  inputBinding:
    prefix: --outstnum
- id: in_out_st_num_any
  doc: output file for stochastic mapping number any
  type: File?
  inputBinding:
    prefix: --outstnumany
- id: in_out_st_tim
  doc: output file for stochastic mapping duration
  type: File?
  inputBinding:
    prefix: --outsttim
- id: in_periods
  doc: comma separated times
  type: string?
  inputBinding:
    prefix: --periods
- id: in_log_f
  doc: log file, STOUT otherwise
  type: File?
  inputBinding:
    prefix: --logf
- id: in_citation
  doc: display phyx citation and exit
  type: boolean?
  inputBinding:
    prefix: --citation
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_an_c
  doc: output file for ancestral calc
  type: File?
  outputBinding:
    glob: $(inputs.in_out_an_c)
- id: out_out_st_tim
  doc: output file for stochastic mapping duration
  type: File?
  outputBinding:
    glob: $(inputs.in_out_st_tim)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phyx:1.1--h937addc_0
cwlVersion: v1.1
baseCommand:
- pxstrec
