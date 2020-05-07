class: CommandLineTool
id: gkmpredict.cwl
inputs:
- id: v
  doc: '<0|1|2|3|4>  set the level of verbosity (default: 2) 0 -- error msgs only
    (ERROR) 1 -- warning msgs (WARN) 2 -- progress msgs at coarse-grained level (INFO)
    3 -- progress msgs at fine-grained level (DEBUG) 4 -- progress msgs at finer-grained
    level (TRACE)'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- gkmpredict
