class: CommandLineTool
id: add_alpha_to_mapping_file.py.cwl
inputs:
- id: alpha_fps
  doc: alpha diversity data with one or multiple metrics i. e. the output of alpha_diversity.py.
    This can also be a comma-separated list of collated alpha diversity file paths
    i. e. the output of collate_alpha.py, when using collated alpha diversity data
    the --depth option is required [REQUIRED]
  type: string
  inputBinding:
    prefix: --alpha_fps
- id: mapping_fp
  doc: mapping file to modify by adding the alpha diversity data [REQUIRED]
  type: string
  inputBinding:
    prefix: --mapping_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- add_alpha_to_mapping_file.py
