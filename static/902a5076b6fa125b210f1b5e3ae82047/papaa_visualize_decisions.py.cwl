class: CommandLineTool
id: papaa_visualize_decisions.py.cwl
inputs:
- id: in_classifier_decisions
  doc: folder location of classifier decision file
  type: File?
  inputBinding:
    prefix: --classifier_decisions
- id: in_custom
  doc: "comma separated list of columns to plot\n"
  type: string?
  inputBinding:
    prefix: --custom
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/papaa:0.1.9--0
cwlVersion: v1.1
baseCommand:
- papaa_visualize_decisions.py
