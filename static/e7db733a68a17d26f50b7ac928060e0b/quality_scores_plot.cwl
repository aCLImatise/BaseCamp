class: CommandLineTool
id: quality_scores_plot.py.cwl
inputs:
- id: qual_fp
  doc: Quality score file used to generate histogram data. [REQUIRED]
  type: string
  inputBinding:
    prefix: --qual_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- quality_scores_plot.py
