class: CommandLineTool
id: womtool.cwl
inputs:
- id: in_inputs
  doc: Workflow inputs file.
  type: File?
  inputBinding:
    prefix: --inputs
- id: in_highlight_mode
  doc: Highlighting mode, one of 'html', 'console' (used only with 'highlight' command)
  type: string?
  inputBinding:
    prefix: --highlight-mode
- id: in_optional_inputs
  doc: If set, optional inputs are also included in the inputs set. Default is 'true'
    (used only with the inputs command)
  type: string?
  inputBinding:
    prefix: --optional-inputs
- id: in_jar
  doc: ''
  type: string?
  inputBinding:
    prefix: -jar
- id: in_workflow_source
  doc: Path to workflow file.
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
- womtool
