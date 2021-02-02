class: CommandLineTool
id: nw_order.cwl
inputs:
- id: in_specify_order_criterion
  doc: ": specify order criterion. Possible criteria are 'a'\n(alphanumeric oder of\
    \ labels), 'n' (number of descendants:\nnodes with fewer descendans appear first),\
    \ 'd' (de-ladderize:\nalternately put nodes with fewer descendants before or after\n\
    those with more)\nThe default (i.e., if option -c is not given) is 'a'."
  type: long
  inputBinding:
    prefix: -c
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nw_order
