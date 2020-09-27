class: CommandLineTool
id: bedtools_spacing.cwl
inputs:
- id: in_bed
  doc: If using BAM input, write output as BED.
  type: boolean
  inputBinding:
    prefix: -bed
- id: in_header
  doc: the header from the A file prior to results.
  type: File
  inputBinding:
    prefix: -header
- id: in_no_buf
  doc: "Disable buffered output. Using this option will cause each line\nof output\
    \ to be printed as it is generated, rather than saved\nin a buffer. This will\
    \ make printing large output files\nnoticeably slower, but can be useful in conjunction\
    \ with\nother software tools and scripts that need to process one\nline of bedtools\
    \ output at a time."
  type: boolean
  inputBinding:
    prefix: -nobuf
- id: in_i_obuf
  doc: "Specify amount of memory to use for input buffer.\nTakes an integer argument.\
    \ Optional suffixes K/M/G supported.\nNote: currently has no effect with compressed\
    \ files.\n"
  type: boolean
  inputBinding:
    prefix: -iobuf
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bedtools
- spacing
