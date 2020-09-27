class: CommandLineTool
id: glimmhmm.pl.cwl
inputs:
- id: in_glimmer_hmm_program
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_train_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- glimmhmm.pl
