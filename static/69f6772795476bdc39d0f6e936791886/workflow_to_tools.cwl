class: CommandLineTool
id: workflow_to_tools.cwl
inputs:
- id: workflow
  doc: A space separated list of galaxy workflow description files in json format
  type: string[]
  inputBinding:
    prefix: --workflow
- id: output_file
  doc: The output file with a yml tool list
  type: string
  inputBinding:
    prefix: --output-file
- id: panel_label
  doc: 'The name of the panel where the tools will show up in Galaxy.If not specified:
    "Tools from workflows"'
  type: string
  inputBinding:
    prefix: --panel_label
outputs: []
cwlVersion: v1.1
baseCommand:
- workflow-to-tools
