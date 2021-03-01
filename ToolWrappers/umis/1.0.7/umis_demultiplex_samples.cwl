class: CommandLineTool
id: umis_demultiplex_samples.cwl
inputs:
- id: in_sample_dot
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- umis
- demultiplex_samples
