class: CommandLineTool
id: _est2genome.cwl
inputs:
- id: in_match
  doc: "integer    [1] Score for matching two bases (Any\ninteger value)"
  type: boolean?
  inputBinding:
    prefix: -match
- id: in_mismatch
  doc: "integer    [1] Cost for mismatching two bases (Any\ninteger value)"
  type: boolean?
  inputBinding:
    prefix: -mismatch
- id: in_gap_penalty
  doc: "integer    [2] Cost for deleting a single base in\neither sequence, excluding\
    \ introns (Any\ninteger value)"
  type: boolean?
  inputBinding:
    prefix: -gappenalty
- id: in_intron_penalty
  doc: "integer    [40] Cost for an intron, independent of\nlength. (Any integer value)"
  type: boolean?
  inputBinding:
    prefix: -intronpenalty
- id: in_splice_penalty
  doc: "integer    [20] Cost for an intron, independent of\nlength and starting/ending\
    \ on donor-acceptor\nsites (Any integer value)"
  type: boolean?
  inputBinding:
    prefix: -splicepenalty
- id: in_min_score
  doc: "integer    [30] Exclude alignments with scores below\nthis threshold score.\
    \ (Any integer value)"
  type: boolean?
  inputBinding:
    prefix: -minscore
- id: in_reverse
  doc: boolean    Reverse the orientation of the EST sequence
  type: boolean?
  inputBinding:
    prefix: -reverse
- id: in_mode
  doc: "menu       [both] This determines the comparison mode.\nThe default value\
    \ is 'both', in which case\nboth strands of the est are compared\nassuming a forward\
    \ gene direction (ie GT/AG\nsplice sites), and the best comparison\nredone assuming\
    \ a reversed (CT/AC) gene\nsplicing direction. The other allowed modes\nare 'forward',\
    \ when just the forward strand\nis searched, and 'reverse', ditto for the\nreverse\
    \ strand. (Values: both (Both\nstrands); forward (Forward strand only);\nreverse\
    \ (Reverse strand only))"
  type: boolean?
  inputBinding:
    prefix: -mode
- id: in_space
  doc: "float      [10.0] For linear-space recursion. If\nproduct of sequence lengths\
    \ divided by 4\nexceeds this then a divide-and-conquer\nstrategy is used to control\
    \ the memory\nrequirements. In this way very long\nsequences can be aligned.\n\
    If you have a machine with plenty of memory\nyou can raise this parameter (but\
    \ do not\nexceed the machine's physical RAM) (Any\nnumeric value)"
  type: boolean?
  inputBinding:
    prefix: -space
- id: in_shuffle
  doc: integer    [0] Shuffle (Any integer value)
  type: boolean?
  inputBinding:
    prefix: -shuffle
- id: in_seed
  doc: "integer    [20825] Random number seed (Any integer\nvalue)"
  type: boolean?
  inputBinding:
    prefix: -seed
- id: in_align
  doc: "boolean    Show the alignment. The alignment includes\nthe first and last\
    \ 5 bases of each intron,\ntogether with the intron width. The\ndirection of splicing\
    \ is indicated by angle\nbrackets (forward or reverse) or ????\n(unknown)."
  type: boolean?
  inputBinding:
    prefix: -align
- id: in_width
  doc: integer    [50] Alignment width (Any integer value)
  type: boolean?
  inputBinding:
    prefix: -width
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _est2genome
