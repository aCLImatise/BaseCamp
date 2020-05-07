class: CommandLineTool
id: sketchy_survey_construct.cwl
inputs:
- id: directory
  doc: Input directory with collected output from Pathfinder Survey  [required]
  type: File
  inputBinding:
    prefix: --directory
- id: output
  doc: Tab-delimited genotype feature index for Sketchy
  type: File
  inputBinding:
    prefix: --output
- id: template
  doc: 'Use a configuration template: saureus, kpneumoniae, mtuberculosis'
  type: string
  inputBinding:
    prefix: --template
- id: missing
  doc: Set a missing character [-]
  type: string
  inputBinding:
    prefix: --missing
- id: intersect
  doc: Take minimum intersection of all specified column values
  type: boolean
  inputBinding:
    prefix: --intersect
outputs: []
cwlVersion: v1.1
baseCommand:
- sketchy
- survey
- construct
