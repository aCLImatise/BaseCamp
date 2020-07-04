class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/getOverlap.cwl
inputs:
- id: input_file_use
  doc: Input file. Use "stdin" for pipes.
  type: boolean
  inputBinding:
    prefix: -i
- id: cols
  doc: "Specify the columns (1-based) for the starts and ends of the features for\
    \ which you'd like to compute the overlap/distance. The columns must be listed\
    \ in the following order:  start1,end1,start2,end2"
  type: boolean
  inputBinding:
    prefix: -cols
outputs: []
cwlVersion: v1.1
baseCommand:
- getOverlap
