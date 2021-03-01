class: CommandLineTool
id: parse_sdrf_split_sdrf.cwl
inputs:
- id: in_sd_rf_file
  doc: SDRF file to be splited  [required]
  type: File?
  inputBinding:
    prefix: --sdrf_file
- id: in_attribute
  doc: "property to split, Multiple attributes are separated\nby commas  [required]"
  type: string?
  inputBinding:
    prefix: --attribute
- id: in_prefix
  doc: file prefix to be added to the sdrf file name
  type: File?
  inputBinding:
    prefix: --prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sdrf-pipelines:0.0.13--py_0
cwlVersion: v1.1
baseCommand:
- parse_sdrf
- split-sdrf
