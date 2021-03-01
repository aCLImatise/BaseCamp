class: CommandLineTool
id: HYPHYMPI_mt.cwl
inputs:
- id: in_i
  doc: i=0;
  type: string
  inputBinding:
    position: 0
- id: in_branch_under_condition
  doc: Branch under condition 'echoFlag'
  type: string
  inputBinding:
    position: 1
- id: in_fprintfstdout
  doc: fprintf(stdout, "\n|------------|-------|-----------|------------|");
  type: string
  inputBinding:
    position: 2
- id: in_return
  doc: return 0;
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- HYPHYMPI
- mt
