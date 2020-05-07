class: CommandLineTool
id: stag_parse.pl.cwl
inputs:
- id: r
  doc: '|root NODE_NAME if this is specified, NODE_NAME becomes the root of the stag
    tree, and anything that was previously the root is placed below this. this happens
    automatically if more than one file is parsed (because there can only be one tree
    root)'
  type: boolean
  inputBinding:
    prefix: -r
- id: color
  doc: Works only if the output handler is able to provide ASCII-colors (currently
    supported for itext and xml)
  type: boolean
  inputBinding:
    prefix: -color
outputs: []
cwlVersion: v1.1
baseCommand:
- stag-parse.pl
