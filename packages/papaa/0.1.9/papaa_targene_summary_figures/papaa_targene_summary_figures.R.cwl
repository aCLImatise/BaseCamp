class: CommandLineTool
id: papaa_targene_summary_figures.R.cwl
inputs:
- id: in_classifier_summary
  doc: Classifier base folder
  type: Directory?
  inputBinding:
    prefix: --classifier_summary
- id: in_seed
  doc: set seed option
  type: string?
  inputBinding:
    prefix: --seed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/papaa:0.1.9--0
cwlVersion: v1.1
baseCommand:
- papaa_targene_summary_figures.R
