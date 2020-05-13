class: CommandLineTool
id: _fuzzpro.cwl
inputs:
- id: pattern
  doc: "pattern    The standard IUPAC one-letter codes for the amino acids are used.\
    \ The symbol 'x' is used for a position where any amino acid is accepted. Ambiguities\
    \ are indicated by listing the acceptable amino acids for a given position, between\
    \ square parentheses '[ ]'. For example: [ALT] stands for Ala or Leu or Thr. Ambiguities\
    \ are also indicated by listing between a pair of curly brackets '{ }' the amino\
    \ acids that are not accepted at a given position. For example: {AM} stands for\
    \ any amino acid except Ala and Met. Each element in a pattern is separated from\
    \ its neighbor by a '-'. (Optional in fuzzpro). Repetition of an element of the\
    \ pattern can be indicated by following that element with a numerical value or\
    \ a numerical range between parenthesis. Examples: x(3) corresponds to x-x-x,\
    \ x(2,4) corresponds to x-x or x-x-x or x-x-x-x. When a pattern is restricted\
    \ to either the N- or C-terminal of a sequence, that pattern either starts with\
    \ a '<' symbol or respectively ends with a '>' symbol. A period ends the pattern.\
    \ (Optional in fuzzpro). For example, [DE](2)HS{P}X(2)PX(2,4)C"
  type: boolean
  inputBinding:
    prefix: -pattern
- id: r_format
  doc: )
  type: string
  inputBinding:
    prefix: -rformat
outputs: []
cwlVersion: v1.1
baseCommand:
- _fuzzpro
