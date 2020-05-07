class: CommandLineTool
id: pyomo_solve.cwl
inputs:
- id: model_or_config_file
  doc: A Python module that defines a Pyomo model, or a configuration file that defines
    options for 'pyomo solve' (in either YAML or JSON format)
  type: string
  inputBinding:
    position: 0
- id: data_files
  doc: Pyomo data files that defined data used to initialize the model (specified
    in the first argument)
  type: string
  inputBinding:
    position: 1
- id: generate_config_template
  doc: Create a configuration template file in YAML or JSON and exit.
  type: string
  inputBinding:
    prefix: --generate-config-template
- id: solver
  doc: Solver name. This option is required unless the solver name is specified in
    a configuration file.
  type: string
  inputBinding:
    prefix: --solver
- id: apply
  doc: operations (e.g. save optimal solutions)
  type: string
  inputBinding:
    prefix: '- Apply'
outputs: []
cwlVersion: v1.1
baseCommand:
- pyomo
- solve
