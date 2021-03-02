class: CommandLineTool
id: pegasus_annotate_cluster_input_data_file.cwl
inputs:
- id: in_annotation
  doc: ''
  type: string?
  inputBinding:
    prefix: --annotation
- id: in_do_not_use_non_de_genes
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --do-not-use-non-de-genes
- id: in_minimum_report_score
  doc: ''
  type: string?
  inputBinding:
    prefix: --minimum-report-score
- id: in_de_key
  doc: ''
  type: string?
  inputBinding:
    prefix: --de-key
- id: in_de_alpha
  doc: ''
  type: string?
  inputBinding:
    prefix: --de-alpha
- id: in_de_test
  doc: ''
  type: string?
  inputBinding:
    prefix: --de-test
- id: in_markers
  doc: ''
  type: string?
  inputBinding:
    prefix: --markers
- id: in_pegasus
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_annotate_cluster
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pegasuspy:1.2.0--py38h0213d0e_1
cwlVersion: v1.1
baseCommand:
- pegasus
- annotate_cluster
- input_data_file
