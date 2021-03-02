class: CommandLineTool
id: consEntropy.cwl
inputs:
- id: in_instead_computing_entropy
  doc: "Instead of computing the relative entropy from two .mod files,\njust use the\
    \ specified value.  The .mod files aren't required\nin this case."
  type: string?
  inputBinding:
    prefix: --H
- id: in_l_minh
  doc: "[or --NH/-N, for backward compatibility]\nReport the expected length that\
    \ would produce the specified value\nof L_min * H (i.e., the specified PIT), assuming\
    \ H remains constant\n(it generally won't).  Can be used iteratively to converge\
    \ on a\ndesired PIT."
  type: long?
  inputBinding:
    prefix: --LminH
- id: in_target_coverage
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_expected_length
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- consEntropy
