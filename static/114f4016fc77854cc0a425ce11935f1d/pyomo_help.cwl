class: CommandLineTool
id: pyomo_help.cwl
inputs:
- id: components
  doc: List the components that are available in Pyomo's modeling environment
  type: boolean
  inputBinding:
    prefix: --components
- id: commands
  doc: List the commands that are installed with Pyomo
  type: boolean
  inputBinding:
    prefix: --commands
- id: api
  doc: Print a summary of the Pyomo Library API
  type: boolean
  inputBinding:
    prefix: --api
- id: data_managers
  doc: Print a summary of the data managers in Pyomo
  type: boolean
  inputBinding:
    prefix: --data-managers
- id: asciidoc
  doc: Generate output that is compatible with asciidoc's markup language
  type: boolean
  inputBinding:
    prefix: --asciidoc
- id: transformations
  doc: List the available model transformations
  type: boolean
  inputBinding:
    prefix: --transformations
- id: solvers
  doc: Summarize the available solvers and solver interfaces
  type: boolean
  inputBinding:
    prefix: --solvers
outputs: []
cwlVersion: v1.1
baseCommand:
- pyomo
- help
