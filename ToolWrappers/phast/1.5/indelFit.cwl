class: CommandLineTool
id: indelFit.cwl
inputs:
- id: in_alpha
  doc: Starting value of alpha, the insertion rate.  Default is 0.02.
  type: double?
  inputBinding:
    prefix: --alpha
- id: in_beta
  doc: Starting value of beta, the deletion rate.  Default is 0.04.
  type: double?
  inputBinding:
    prefix: --beta
- id: in_tau
  doc: Starting value of tau, the length parameter.  Default is 0.05.
  type: long?
  inputBinding:
    prefix: --tau
- id: in_lnl
  doc: "Compute log likelihood of model only, without optimizing parameters.\nThe\
    \ options above can be used to set the parameters as desired."
  type: boolean?
  inputBinding:
    prefix: --lnl
- id: in_columns
  doc: Output log likelihood of each column.
  type: boolean?
  inputBinding:
    prefix: --columns
- id: in_features
  doc: "Estimate separate parameters for each type of feature in the given\nfile,\
    \ as well as for background sites."
  type: File?
  inputBinding:
    prefix: --features
- id: in_reference
  doc: "(For use with --features) Name of species (node of tree) defining\ncoordinate\
    \ frame of features.  By default, the coordinate frame of\nthe entire alignment\
    \ is assumed."
  type: string?
  inputBinding:
    prefix: --reference
- id: in_log
  doc: Write log of optimization to specified file.
  type: File?
  inputBinding:
    prefix: --log
- id: in_phyl_of_it_dot
  doc: 'OPTIONS:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- indelFit
