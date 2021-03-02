class: CommandLineTool
id: extract_discordants.py.cwl
inputs:
- id: in_input_config_file
  doc: Input config file (Required)
  type: File?
  inputBinding:
    prefix: -c
- id: in_dataset_name_required
  doc: Dataset name (Required)
  type: string?
  inputBinding:
    prefix: -d
- id: in_min_mapq
  doc: Minimum MAPQ required on both ends of a pair (def. 0)
  type: long?
  inputBinding:
    prefix: --min_mapq
- id: in_allow_dups
  doc: Allow duplicate pairs (def. False)
  type: boolean?
  inputBinding:
    prefix: --allow_dups
- id: in_mem
  doc: Memory used for sorting (def. 2000000000)
  type: long?
  inputBinding:
    prefix: --mem
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0
cwlVersion: v1.1
baseCommand:
- extract_discordants.py
