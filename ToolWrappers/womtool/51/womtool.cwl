class: CommandLineTool
id: womtool.cwl
inputs:
- id: in_inputs
  doc: "Workflow inputs file.\n-h, --highlight-mode <value>\nHighlighting mode, one\
    \ of 'html', 'console' (used only with 'highlight' command)\n-o, --optional-inputs\
    \ <value>\nIf set, optional inputs are also included in the inputs set. Default\
    \ is 'true' (used only with the inputs command)\n-l, --list-dependencies  An optional\
    \ flag to list files referenced in import statements (used only with 'validate'\
    \ command)\n--help\n--version"
  type: File
  inputBinding:
    prefix: --inputs
- id: in_jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_validate_vertical_line_inputs_vertical_line_parse_vertical_line_highlight_vertical_line_graph_vertical_line_upgrade_vertical_line_wom_graph
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_workflow_source
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- womtool
