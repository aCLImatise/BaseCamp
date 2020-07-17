class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gkmpredict.cwl
inputs:
- id: set_level_verbosity
  doc: 'set the level of verbosity (default: 2) 0 -- error msgs only (ERROR) 1 --
    warning msgs (WARN) 2 -- progress msgs at coarse-grained level (INFO) 3 -- progress
    msgs at fine-grained level (DEBUG) 4 -- progress msgs at finer-grained level (TRACE)'
  type: string
  inputBinding:
    prefix: -v
- id: test_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: model_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- gkmpredict
