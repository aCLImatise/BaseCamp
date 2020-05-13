class: CommandLineTool
id: palindrome.cwl
inputs:
- id: min_p_allen
  doc: integer    [10] Enter minimum length of palindrome (Integer 1 or more)
  type: boolean
  inputBinding:
    prefix: -minpallen
- id: maxp_allen
  doc: integer    [100] Enter maximum length of palindrome (Any integer value)
  type: boolean
  inputBinding:
    prefix: -maxpallen
- id: gap_limit
  doc: integer    [100] Enter maximum gap between repeated regions (Integer 0 or more)
  type: boolean
  inputBinding:
    prefix: -gaplimit
- id: num_mismatches
  doc: integer    [0] Number of mismatches allowed (Positive integer)
  type: boolean
  inputBinding:
    prefix: -nummismatches
outputs: []
cwlVersion: v1.1
baseCommand:
- palindrome
