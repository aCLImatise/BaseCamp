class: CommandLineTool
id: chakin_feature_get_features.cwl
inputs:
- id: in_organism_id
  doc: organism_id filter
  type: long?
  inputBinding:
    prefix: --organism_id
- id: in_analysis_id
  doc: analysis_id filter
  type: long?
  inputBinding:
    prefix: --analysis_id
- id: in_name
  doc: name filter
  type: string?
  inputBinding:
    prefix: --name
- id: in_unique_name
  doc: uniquename filter
  type: string?
  inputBinding:
    prefix: --uniquename
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/python-chado:2.3.4--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- chakin
- feature
- get_features
