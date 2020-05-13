class: CommandLineTool
id: RepeatProteinMask.cwl
inputs:
- id: no_low_simple
  doc: Turns off masking/annotating of low complexity and simple repeats in the final
    output. Low complexity and simple repeat analysis will still occur prior to looking
    for matches to the RepeatPep database. Detailed help
  type: boolean
  inputBinding:
    prefix: -noLowSimple
outputs: []
cwlVersion: v1.1
baseCommand:
- RepeatProteinMask
