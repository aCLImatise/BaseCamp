class: CommandLineTool
id: workflow_to_tools.cwl
inputs:
- id: in_workflow
  doc: "A space separated list of galaxy workflow description\nfiles in json format"
  type: string[]
  inputBinding:
    prefix: --workflow
- id: in_output_file
  doc: The output file with a yml tool list
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_panel_label
  doc: "The name of the panel where the tools will show up in\nGalaxy.If not specified:\
    \ \"Tools from workflows\""
  type: string?
  inputBinding:
    prefix: --panel_label
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: The output file with a yml tool list
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- workflow-to-tools
