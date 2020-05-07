class: CommandLineTool
id: length_normalise_counts.py_input_counts.cwl
inputs:
- id: input_counts
  doc: Input count file.
  type: string
  inputBinding:
    position: 0
- id: output_count
  doc: Output RPKM file.
  type: string
  inputBinding:
    position: 1
- id: f
  doc: Input transcriptome.
  type: string
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- length_normalise_counts.py
- input_counts
