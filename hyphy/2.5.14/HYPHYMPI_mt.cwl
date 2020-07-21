class: CommandLineTool
id: ../../../HYPHYMPI_mt.cwl
inputs:
- id: i
  doc: i=0;
  type: string
  inputBinding:
    position: 0
- id: branch_under_condition
  doc: Branch under condition 'echoFlag'
  type: string
  inputBinding:
    position: 1
- id: fprintfstdout
  doc: fprintf(stdout, "\n|------------|-------|-----------|------------|");
  type: string
  inputBinding:
    position: 2
- id: return
  doc: return 0;
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- HYPHYMPI
- mt
