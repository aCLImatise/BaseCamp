class: CommandLineTool
id: dissimilarity_mtx_stats.py.cwl
inputs:
- id: input_dir
  doc: Path to input directory [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_dir
- id: output_dir
  doc: Path to store result files [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- dissimilarity_mtx_stats.py
