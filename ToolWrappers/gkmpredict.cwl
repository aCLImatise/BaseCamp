class: CommandLineTool
id: gkmpredict.cwl
inputs:
- id: in_set_level_msgs
  doc: "set the level of verbosity (default: 2)\n0 -- error msgs only (ERROR)\n1 --\
    \ warning msgs (WARN)\n2 -- progress msgs at coarse-grained level (INFO)\n3 --\
    \ progress msgs at fine-grained level (DEBUG)\n4 -- progress msgs at finer-grained\
    \ level (TRACE)"
  type: long
  inputBinding:
    prefix: -v
- id: in_set_number_default
  doc: "set the number of threads for parallel calculation, 1, 4, or 16\n(default:\
    \ 1)\n"
  type: long
  inputBinding:
    prefix: -T
- id: in_test_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_model_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gkmpredict
