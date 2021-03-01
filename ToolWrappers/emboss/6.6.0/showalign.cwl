class: CommandLineTool
id: showalign.cwl
inputs:
- id: in_matrix
  doc: "matrix     [EBLOSUM62 for protein, EDNAFULL for DNA]\nThis is the scoring\
    \ matrix file used when\ncomparing sequences. By default it is the\nfile 'EBLOSUM62'\
    \ (for proteins) or the file\n'EDNAFULL' (for nucleic sequences). These\nfiles\
    \ are found in the 'data' directory of\nthe EMBOSS installation."
  type: boolean?
  inputBinding:
    prefix: -matrix
- id: in_refseq
  doc: "string     [0] If you give the number in the alignment\nor the name of a sequence,\
    \ it will be taken\nto be the reference sequence. The reference\nsequence is always\
    \ shown in full and is the\none against which all the other sequences\nare compared.\
    \ If this is set to 0 then the\nconsensus sequence will be used as the\nreference\
    \ sequence. By default the consensus\nsequence is used as the reference sequence.\n\
    (Any string)"
  type: boolean?
  inputBinding:
    prefix: -refseq
- id: in_show
  doc: "menu       [N] What to show (Values: A (All of the\nsequences); I (Identities\
    \ between the\nsequences); N (Non-identities between the\nsequences); S (Similarities\
    \ between the\nsequences); D (Dissimilarities between the\nsequences))"
  type: boolean?
  inputBinding:
    prefix: -show
- id: in_order
  doc: "menu       [I] Output order of the sequences (Values: I\n(Input order - no\
    \ change); A (Alphabetical\norder of the names); S (Similarity to the\nreference\
    \ sequence))"
  type: boolean?
  inputBinding:
    prefix: -order
- id: in_uppercase
  doc: "range      [If this is left blank, then the sequence\ncase is left alone.]\
    \ Regions to put in\nuppercase.\nIf this is left blank, then the sequence\ncase\
    \ is left alone.\nA set of regions is specified by a set of\npairs of positions.\n\
    The positions are integers.\nThey are separated by any non-digit,\nnon-alpha character.\n\
    Examples of region specifications are:\n24-45, 56-78\n1:45, 67=99;765..888\n1,5,8,10,23,45,57,99"
  type: boolean?
  inputBinding:
    prefix: -uppercase
- id: in_width
  doc: "integer    [60] Width of sequence to display (Integer 1\nor more)"
  type: boolean?
  inputBinding:
    prefix: -width
- id: in_margin
  doc: "integer    [-1] This sets the length of the left-hand\nmargin for sequence\
    \ names. If the margin is\nset at 0 then no margin and no names are\ndisplayed.\
    \ If the margin is set to a value\nthat is less than the length of a sequence\n\
    name then the sequence name is displayed\ntruncated to the length of the margin.\
    \ If\nthe margin is set to -1 then the minimum\nmargin width that will allow all\
    \ the\nsequence names to be displayed in full plus\na space at the end of the\
    \ name will\nautomatically be selected. (Integer -1 or\nmore)"
  type: boolean?
  inputBinding:
    prefix: -margin
- id: in_html
  doc: boolean    [N] Use HTML formatting
  type: boolean?
  inputBinding:
    prefix: -html
- id: in_highlight
  doc: "range      [(full sequence)] Regions to colour if\nformatting for HTML.\n\
    If this is left blank, then the sequence is\nleft alone.\nA set of regions is\
    \ specified by a set of\npairs of positions.\nThe positions are integers.\nThey\
    \ are followed by any valid HTML font\ncolour.\nExamples of region specifications\
    \ are:\n24-45 blue 56-78 orange\n1-100 green 120-156 red\nA file of ranges to\
    \ colour (one range per\nline) can be specified as '@filename'."
  type: boolean?
  inputBinding:
    prefix: -highlight
- id: in_plurality
  doc: "float      [50.0] Set a cut-off for the % of positive\nscoring matches below\
    \ which there is no\nconsensus. The default plurality is taken as\n50% of the\
    \ total weight of all the\nsequences in the alignment. (Number from\n0.000 to\
    \ 100.000)"
  type: boolean?
  inputBinding:
    prefix: -plurality
- id: in_set_case
  doc: "float      [@( $(sequence.totweight) / 2)] Sets the\nthreshold for the scores\
    \ of the positive\nmatches above which the consensus is in\nupper-case and below\
    \ which the consensus is\nin lower-case. By default this is set to be\nhalf of\
    \ the (weight-adjusted) number of\nsequences in the alignment. (Any numeric\n\
    value)"
  type: boolean?
  inputBinding:
    prefix: -setcase
- id: in_identity
  doc: "float      [0.0] Provides the facility of setting the\nrequired number of\
    \ identities at a position\nfor it to give a consensus. Therefore, if\nthis is\
    \ set to 100% only columns of\nidentities contribute to the consensus.\n(Number\
    \ from 0.000 to 100.000)"
  type: boolean?
  inputBinding:
    prefix: -identity
- id: in_alignment_dot
  doc: -[no]ruler          boolean    [Y] If this option is true then a ruler line
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- showalign
