class: CommandLineTool
id: fragment_4dnpairs.pl.cwl
inputs:
- id: allow_replacement
  doc: ': allows replacing existing frag1/frag2 columns. Default: abort if the columns
    already exist.'
  type: boolean
  inputBinding:
    prefix: --allow-replacement
outputs: []
cwlVersion: v1.1
baseCommand:
- fragment_4dnpairs.pl
