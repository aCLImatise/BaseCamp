class: CommandLineTool
id: igdiscover_upstream.cwl
inputs:
- id: in_max_error_percentage
  doc: 'Allow PERCENT errors in V gene match. Default: 1'
  type: long
  inputBinding:
    prefix: --max-error-percentage
- id: in_max_fr_one_errors
  doc: Allow PERCENT errors in FR1 region.
  type: long
  inputBinding:
    prefix: --max-FR1-errors
- id: in_max_cdr_one_errors
  doc: Allow PERCENT errors in CDR1 region.
  type: long
  inputBinding:
    prefix: --max-CDR1-errors
- id: in_min_consensus_size
  doc: 'Require at least N sequences for consensus. Default: 1'
  type: long
  inputBinding:
    prefix: --min-consensus-size
- id: in_consensus_threshold
  doc: 'Threshold for consensus computation. Default: 75%'
  type: long
  inputBinding:
    prefix: --consensus-threshold
- id: in_no_ambiguous
  doc: Discard consensus sequences with ambiguous bases
  type: boolean
  inputBinding:
    prefix: --no-ambiguous
- id: in_part
  doc: "{UTR,leader,UTR+leader}\nWhich part of the sequence before the V gene match\
    \ to\nanalyze. Default: UTR+leader"
  type: boolean
  inputBinding:
    prefix: --part
- id: in_debug
  doc: Enable debugging output
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- igdiscover
- upstream
