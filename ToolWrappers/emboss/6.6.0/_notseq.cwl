class: CommandLineTool
id: _notseq.cwl
inputs:
- id: in_junk_out_seq
  doc: "seqoutall  [/dev/null] This file collects the sequences\nwhich you have excluded\
    \ from the main\noutput file of sequences."
  type: File?
  inputBinding:
    prefix: -junkoutseq
- id: in_parameter_dot
  doc: The list of sequence names can be separated
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_junk_out_seq
  doc: "seqoutall  [/dev/null] This file collects the sequences\nwhich you have excluded\
    \ from the main\noutput file of sequences."
  type: File?
  outputBinding:
    glob: $(inputs.in_junk_out_seq)
hints: []
cwlVersion: v1.1
baseCommand:
- _notseq
