class: CommandLineTool
id: fuzznuc.cwl
inputs:
- id: in_pattern
  doc: "pattern    The standard IUPAC one-letter codes for the\nnucleotides are used.\n\
    The symbol 'n' is used for a position where\nany nucleotide is accepted.\nAmbiguities\
    \ are indicated by listing the\nacceptable nucleotides for a given position,\n\
    between square parentheses '[ ]'. For\nexample: [ACG] stands for A or C or G.\n\
    Ambiguities are also indicated by listing\nbetween a pair of curly brackets '{\
    \ }' the\nnucleotides that are not accepted at a given\nposition. For example:\
    \ {AG} stands for any\nnucleotides except A and G.\nEach element in a pattern\
    \ is separated from\nits neighbor by a '-'. (Optional in\nfuzznuc).\nRepetition\
    \ of an element of the pattern can\nbe indicated by following that element with\n\
    a numerical value or a numerical range\nbetween parenthesis. Examples: N(3)\n\
    corresponds to N-N-N, N(2,4) corresponds to\nN-N or N-N-N or N-N-N-N.\nWhen a\
    \ pattern is restricted to either the\n5' or 3' end of a sequence, that pattern\n\
    either starts with a '<' symbol or\nrespectively ends with a '>' symbol.\nA period\
    \ ends the pattern. (Optional in\nfuzznuc).\nFor example, [CG](5)TG{A}N(1,5)C"
  type: boolean?
  inputBinding:
    prefix: -pattern
- id: in_complement
  doc: boolean    [N] Search complementary strand
  type: boolean?
  inputBinding:
    prefix: -complement
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fuzznuc
