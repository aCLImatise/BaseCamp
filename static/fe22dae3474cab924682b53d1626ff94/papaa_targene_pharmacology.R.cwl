class: CommandLineTool
id: papaa_targene_pharmacology.R.cwl
inputs:
- id: in_classifier_results
  doc: Location of classifier
  type: string?
  inputBinding:
    prefix: --classifier_results
- id: in_compound
  doc: list of compounds
  type: string?
  inputBinding:
    prefix: --compound
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/papaa:0.1.9--0
cwlVersion: v1.1
baseCommand:
- papaa_targene_pharmacology.R
