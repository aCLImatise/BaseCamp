class: CommandLineTool
id: ../../../sqt_qgramfreq.cwl
inputs:
- id: in_length_qgrams_also
  doc: 'length of the q-grams (also called k-mers) (default: 4)'
  type: long
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sqt
- qgramfreq
