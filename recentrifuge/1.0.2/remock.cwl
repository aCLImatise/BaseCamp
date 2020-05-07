class: CommandLineTool
id: remock.cwl
inputs:
- id: file
  doc: 'Explicit source: Centrifuge output file as source'
  type: File
  inputBinding:
    prefix: --file
- id: random
  doc: Random score generated. Please provide the minimum hit length (mhl) of the
    classification; 15 by default
  type: string
  inputBinding:
    prefix: --random
- id: debug
  doc: increase output verbosity and perform additional checks
  type: boolean
  inputBinding:
    prefix: --debug
- id: mock
  doc: Mock files to be read for mock Centrifuge sequences layout. If a single directory
    is entered, every .mck file inside will be taken as a different sample. Multiple
    -f is available to include several samples.
  type: File
  inputBinding:
    prefix: --mock
- id: xcel
  doc: Excel file with the mock layout.
  type: File
  inputBinding:
    prefix: --xcel
- id: test
  doc: generate mock data ready for testing Recentrifuge
  type: boolean
  inputBinding:
    prefix: --test
- id: nodes_path
  doc: path for the nodes information files (nodes.dmp and names.dmp from NCBI)
  type: File
  inputBinding:
    prefix: --nodespath
outputs: []
cwlVersion: v1.1
baseCommand:
- remock
