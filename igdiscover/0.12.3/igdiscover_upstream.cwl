class: CommandLineTool
id: igdiscover_upstream.cwl
inputs:
- id: max_error_percentage
  doc: 'Allow PERCENT errors in V gene match. Default: 1'
  type: string
  inputBinding:
    prefix: --max-error-percentage
- id: max_fr1_errors
  doc: Allow PERCENT errors in FR1 region.
  type: string
  inputBinding:
    prefix: --max-FR1-errors
- id: max_cdr1_errors
  doc: Allow PERCENT errors in CDR1 region.
  type: string
  inputBinding:
    prefix: --max-CDR1-errors
- id: min_consensus_size
  doc: 'Require at least N sequences for consensus. Default: 1'
  type: string
  inputBinding:
    prefix: --min-consensus-size
- id: consensus_threshold
  doc: 'Threshold for consensus computation. Default: 75%'
  type: string
  inputBinding:
    prefix: --consensus-threshold
- id: no_ambiguous
  doc: Discard consensus sequences with ambiguous bases
  type: boolean
  inputBinding:
    prefix: --no-ambiguous
- id: part
  doc: '{UTR,leader,UTR+leader} Which part of the sequence before the V gene match
    to analyze. Default: UTR+leader'
  type: boolean
  inputBinding:
    prefix: --part
- id: debug
  doc: Enable debugging output
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- upstream
