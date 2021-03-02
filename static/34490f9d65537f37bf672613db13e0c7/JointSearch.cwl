class: CommandLineTool
id: JointSearch.cwl
inputs:
- id: in_rec_model
  doc: '{UndatedDL, UndatedDTL}'
  type: string?
  inputBinding:
    prefix: --rec-model
- id: in_rec_opt
  doc: '{grid, simplex}'
  type: string?
  inputBinding:
    prefix: --rec-opt
- id: in_lib_pll_model
  doc: '{GTR, LG, DAYHOFF etc.}'
  type: string?
  inputBinding:
    prefix: --libpll-model
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/generax:1.2.3--h78e549b_0
cwlVersion: v1.1
baseCommand:
- JointSearch
