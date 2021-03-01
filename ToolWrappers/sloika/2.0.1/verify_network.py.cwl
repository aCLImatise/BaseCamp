class: CommandLineTool
id: verify_network.py.cwl
inputs:
- id: in_km_er
  doc: 'Length of kmer (default: 5)'
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_n_feature
  doc: 'Number of features to input to network (default: 4)'
  type: long?
  inputBinding:
    prefix: --nfeature
- id: in_sd
  doc: 'Standard deviation to initialise with (default: 0.5)'
  type: double?
  inputBinding:
    prefix: --sd
- id: in_stride
  doc: 'Stride of model or None for no stride (default: 1)'
  type: long?
  inputBinding:
    prefix: --stride
- id: in_win_len
  doc: 'Length of window over data (default: 3)'
  type: long?
  inputBinding:
    prefix: --winlen
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- verify_network.py
