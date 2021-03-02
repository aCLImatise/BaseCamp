class: CommandLineTool
id: mergeBreakpoints.py.cwl
inputs:
- id: in_hydra_final_file
  doc: Hydra .final file
  type: File?
  inputBinding:
    prefix: -f
- id: in_hydra_detail_file
  doc: Hydra .detail file
  type: File?
  inputBinding:
    prefix: -d
- id: in_merged_final_file
  doc: Merged final file
  type: File?
  inputBinding:
    prefix: -o
- id: in_maximum_distance_allowed
  doc: "Maximum distance allowed for two flanking breakpoints to be\nmerged.\n"
  type: long?
  inputBinding:
    prefix: -s
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0
cwlVersion: v1.1
baseCommand:
- mergeBreakpoints.py
