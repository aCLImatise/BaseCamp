class: CommandLineTool
id: mock_cwl_runner.cwl
inputs:
- id: in_quiet
  doc: ''
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_outdir
  doc: ''
  type: string
  inputBinding:
    prefix: --outdir
- id: in_process_file
  doc: jobfile
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mock-cwl-runner
