class: CommandLineTool
id: ../../../bp_search2alnblocks.pl.cwl
inputs:
- id: v_slash_verbose
  doc: Turn on debugging
  type: boolean
  inputBinding:
    prefix: -v/--verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_search2alnblocks.pl
