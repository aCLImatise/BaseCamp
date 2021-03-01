class: CommandLineTool
id: gff_sort_and_compete.sh.cwl
inputs:
- id: in_cat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mirmachine:0.1.2--py_0
cwlVersion: v1.1
baseCommand:
- gff_sort_and_compete.sh
