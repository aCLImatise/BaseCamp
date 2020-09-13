class: CommandLineTool
id: ../../../length_normalise_counts.py.cwl
inputs:
- id: in_input_transcriptome
  doc: Input transcriptome.
  type: string
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- length_normalise_counts.py
