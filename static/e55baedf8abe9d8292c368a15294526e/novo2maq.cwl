class: CommandLineTool
id: ../../../novo2maq.cwl
inputs:
- id: turns_smithwaterman_check
  doc: '|off Turns on or off the Smith-Waterman check of indels. When only indels
    that/n                          would be part of optimum local alignment are converted
    as MAQ indels. Default is off /n                          which will report all
    indels found by Novoalign.'
  type: string
  inputBinding:
    prefix: -s
- id: produces_short_report
  doc: Produces short report on number of alignments per reference sequence.
  type: boolean
  inputBinding:
    prefix: -r
- id: out_dot_map
  doc: is file name for the output MAQ map file.
  type: string
  inputBinding:
    position: 0
- id: in_dot_list
  doc: "is a list of reference sequence headers to be selected. This file servers\
    \ to specify reference sequences to be selected for conversion to the MAQ map\
    \ format and also allows translation of the header sequence. Each line in the\
    \ file has format: <refheader> <tab> <replacement header> Any reference sequences\
    \ not listed in this file will not be converted to MAQ map file. Use '-' rather\
    \ than a filename to specify that all sequences are to be selected and converted."
  type: string
  inputBinding:
    position: 1
- id: in_dot_novo
  doc: is the Novoalign report file to be converted. Use '-' to specify that the report
    is to be read from stdin
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- novo2maq
