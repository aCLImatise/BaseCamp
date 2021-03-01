class: CommandLineTool
id: bedtools_overlap.cwl
inputs:
- id: in_input_file_use
  doc: Input file. Use "stdin" for pipes.
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_cols
  doc: "Specify the columns (1-based) for the starts and ends of the\nfeatures for\
    \ which you'd like to compute the overlap/distance.\nThe columns must be listed\
    \ in the following order:\nstart1,end1,start2,end2"
  type: boolean?
  inputBinding:
    prefix: -cols
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bedtools
- overlap
