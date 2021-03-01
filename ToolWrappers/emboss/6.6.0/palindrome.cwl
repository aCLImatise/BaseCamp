class: CommandLineTool
id: palindrome.cwl
inputs:
- id: in_min_p_allen
  doc: "integer    [10] Enter minimum length of palindrome\n(Integer 1 or more)"
  type: boolean?
  inputBinding:
    prefix: -minpallen
- id: in_maxp_allen
  doc: "integer    [100] Enter maximum length of palindrome\n(Any integer value)"
  type: boolean?
  inputBinding:
    prefix: -maxpallen
- id: in_gap_limit
  doc: "integer    [100] Enter maximum gap between repeated\nregions (Integer 0 or\
    \ more)"
  type: boolean?
  inputBinding:
    prefix: -gaplimit
- id: in_num_mismatches
  doc: "integer    [0] Number of mismatches allowed (Positive\ninteger)"
  type: boolean?
  inputBinding:
    prefix: -nummismatches
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- palindrome
