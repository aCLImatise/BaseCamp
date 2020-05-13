class: CommandLineTool
id: indelFit.cwl
inputs:
- id: alpha
  doc: Starting value of alpha, the insertion rate.  Default is 0.02.
  type: string
  inputBinding:
    prefix: --alpha
- id: beta
  doc: Starting value of beta, the deletion rate.  Default is 0.04.
  type: string
  inputBinding:
    prefix: --beta
- id: tau
  doc: Starting value of tau, the length parameter.  Default is 0.05.
  type: string
  inputBinding:
    prefix: --tau
- id: lnl
  doc: Compute log likelihood of model only, without optimizing parameters. The options
    above can be used to set the parameters as desired.
  type: boolean
  inputBinding:
    prefix: --lnl
- id: columns
  doc: Output log likelihood of each column.
  type: boolean
  inputBinding:
    prefix: --columns
- id: features
  doc: Estimate separate parameters for each type of feature in the given file, as
    well as for background sites.
  type: File
  inputBinding:
    prefix: --features
- id: reference
  doc: (For use with --features) Name of species (node of tree) defining coordinate
    frame of features.  By default, the coordinate frame of the entire alignment is
    assumed.
  type: string
  inputBinding:
    prefix: --reference
- id: log
  doc: Write log of optimization to specified file.
  type: File
  inputBinding:
    prefix: --log
outputs: []
cwlVersion: v1.1
baseCommand:
- indelFit
