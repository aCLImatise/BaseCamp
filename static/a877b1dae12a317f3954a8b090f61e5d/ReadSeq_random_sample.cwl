class: CommandLineTool
id: ReadSeq_random_sample.cwl
inputs:
- id: in_num_selection
  doc: "number of sequence to select for each sample. Default is the smallest sample\
    \ size. Limit\nto the default value."
  type: long?
  inputBinding:
    prefix: --num-selection
- id: in_subregion_length
  doc: "If specified, radomly choose a subregion with the required length from the\
    \ sequence.  If\na selected sequence is shorter than the specified length, that\
    \ sequence will not be\nincluded in the output,  which may result in not equal\
    \ number of sequences in some\nsamples."
  type: long?
  inputBinding:
    prefix: --subregion_length
- id: in_resample_seq_file
  doc: ''
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
- ReadSeq
- random-sample
