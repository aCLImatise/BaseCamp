class: CommandLineTool
id: pyomo_test_solvers.cwl
inputs:
- id: solver
  doc: a solver name
  type: string
  inputBinding:
    position: 0
- id: csv_file
  doc: Save test results to this file in a CSV format
  type: string
  inputBinding:
    prefix: --csv-file
- id: debug
  doc: Show debugging information and text generated during tests.
  type: boolean
  inputBinding:
    prefix: --debug
- id: verbose
  doc: Show verbose results output.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- pyomo
- test-solvers
