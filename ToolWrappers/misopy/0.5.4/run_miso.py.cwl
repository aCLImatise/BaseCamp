class: CommandLineTool
id: run_miso.py.cwl
inputs:
- id: in_compare_samples_dot
  doc: 'two arguments: the label for'
  type: string
  inputBinding:
    prefix: --compare-samples.
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- run_miso.py
