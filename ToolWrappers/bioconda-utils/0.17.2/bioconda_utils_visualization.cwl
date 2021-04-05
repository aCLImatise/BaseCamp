class: CommandLineTool
id: bioconda_utils_visualization.cwl
inputs:
- id: in_biocon_da_utils
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bioconda-utils:0.17.2--py_0
cwlVersion: v1.1
baseCommand:
- bioconda-utils
- visualization
