class: CommandLineTool
id: _etandem.cwl
inputs:
- id: in_min_repeat
  doc: "integer    [10] Minimum repeat size (Integer, 2 or\nhigher)"
  type: boolean?
  inputBinding:
    prefix: -minrepeat
- id: in_max_repeat
  doc: "integer    [Same as -minrepeat] Maximum repeat size\n(Integer, same as -minrepeat\
    \ or higher)"
  type: boolean?
  inputBinding:
    prefix: -maxrepeat
- id: in_threshold
  doc: integer    [20] Threshold score (Any integer value)
  type: boolean?
  inputBinding:
    prefix: -threshold
- id: in_mismatch
  doc: boolean    Allow N as a mismatch
  type: boolean?
  inputBinding:
    prefix: -mismatch
- id: in_uniform
  doc: boolean    Allow uniform consensus
  type: boolean?
  inputBinding:
    prefix: -uniform
- id: in_orig_file
  doc: "outfile    [*.etandem] Sanger Centre program tandem\noutput file (optional)"
  type: File?
  inputBinding:
    prefix: -origfile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_orig_file
  doc: "outfile    [*.etandem] Sanger Centre program tandem\noutput file (optional)"
  type: File?
  outputBinding:
    glob: $(inputs.in_orig_file)
hints: []
cwlVersion: v1.1
baseCommand:
- _etandem
