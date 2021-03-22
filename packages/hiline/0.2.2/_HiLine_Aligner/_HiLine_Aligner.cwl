class: CommandLineTool
id: _HiLine_Aligner.cwl
inputs:
- id: in_threads
  doc: RANGE
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hiline:0.2.2--py38hc9558a2_1
cwlVersion: v1.1
baseCommand:
- _HiLine_Aligner
