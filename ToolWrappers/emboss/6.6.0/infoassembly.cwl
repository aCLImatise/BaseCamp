class: CommandLineTool
id: infoassembly.cwl
inputs:
- id: in_ref_sequence
  doc: seqset     Reference sequences in the assembly
  type: boolean?
  inputBinding:
    prefix: -refsequence
- id: in_window_size
  doc: "integer    [100] The size of windows on the genome that\nare used to bin reads.\
    \ (Any integer value)"
  type: boolean?
  inputBinding:
    prefix: -windowsize
- id: in_bisulfite
  doc: "boolean    [N] If this is true, it is assumed that the\nreads were bisulfite\
    \ treated"
  type: boolean?
  inputBinding:
    prefix: -bisulfite
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- infoassembly
