class: CommandLineTool
id: remock.cwl
inputs:
- id: in_file
  doc: 'Explicit source: Centrifuge output file as source'
  type: File?
  inputBinding:
    prefix: --file
- id: in_random
  doc: "Random score generated. Please provide the minimum hit\nlength (mhl) of the\
    \ classification; 15 by default"
  type: long?
  inputBinding:
    prefix: --random
- id: in_debug
  doc: increase output verbosity and perform additional
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_xcel
  doc: Excel file with the mock layout.
  type: File?
  inputBinding:
    prefix: --xcel
- id: in_test
  doc: generate mock data ready for testing Recentrifuge
  type: boolean?
  inputBinding:
    prefix: --test
- id: in_nodes_path
  doc: "path for the nodes information files (nodes.dmp and\nnames.dmp from NCBI)"
  type: File?
  inputBinding:
    prefix: --nodespath
- id: in_checks
  doc: -m FILE, --mock FILE  Mock files to be read for mock Centrifuge sequences
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file
  doc: 'Explicit source: Centrifuge output file as source'
  type: File?
  outputBinding:
    glob: $(inputs.in_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/recentrifuge:1.3.1--py_0
cwlVersion: v1.1
baseCommand:
- remock
