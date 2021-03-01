class: CommandLineTool
id: interop_dumptext.cwl
inputs:
- id: in_subset
  doc: '[0]: Number of metrics to subsample'
  type: boolean?
  inputBinding:
    prefix: --subset
- id: in_metric
  doc: '[]: Name of metric to load, e.g. --metric=Tile to load TileMetricsOut.bin'
  type: boolean?
  inputBinding:
    prefix: --metric
- id: in_option_two
  doc: ''
  type: long?
  inputBinding:
    prefix: --option2
- id: in_option_one
  doc: ''
  type: long?
  inputBinding:
    prefix: --option1
- id: in_run_folder
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
  dockerPull: quay.io/biocontainers/illumina-interop:1.1.21--he1b5a44_0
cwlVersion: v1.1
baseCommand:
- interop_dumptext
