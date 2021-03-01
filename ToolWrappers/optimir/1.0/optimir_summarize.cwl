class: CommandLineTool
id: optimir_summarize.cwl
inputs:
- id: in_dir
  doc: Full path of the directory containing results
  type: File?
  inputBinding:
    prefix: --dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- optimir
- summarize
