class: CommandLineTool
id: compare_trajectories.py.cwl
inputs:
- id: input_fp
  doc: Input ordination results filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fp
- id: map_fp
  doc: Input metadata mapping filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --map_fp
- id: categories
  doc: Comma-separated list of category names of the mapping file to use to create
    the trajectories [REQUIRED]
  type: string
  inputBinding:
    prefix: --categories
- id: output_dir
  doc: Name of the output directory to save the results [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- compare_trajectories.py
