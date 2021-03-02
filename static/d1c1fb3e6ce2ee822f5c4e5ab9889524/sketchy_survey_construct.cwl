class: CommandLineTool
id: sketchy_survey_construct.cwl
inputs:
- id: in_directory
  doc: Input directory with collected output from Pathfinder
  type: File?
  inputBinding:
    prefix: --directory
- id: in_output
  doc: Tab-delimited genotype feature index for Sketchy
  type: File?
  inputBinding:
    prefix: --output
- id: in_template
  doc: 'Use a configuration template: saureus, kpneumoniae,'
  type: string?
  inputBinding:
    prefix: --template
- id: in_intersect
  doc: Take minimum intersection of all specified column
  type: boolean?
  inputBinding:
    prefix: --intersect
- id: in_survey
  doc: '[required]'
  type: string
  inputBinding:
    position: 0
- id: in_m_tuberculosis
  doc: -m, --missing TEXT    Set a missing character [-]
  type: string
  inputBinding:
    position: 1
- id: in_values
  doc: --help                Show this message and exit.
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sketchy
- survey
- construct
