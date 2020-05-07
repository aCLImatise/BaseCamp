class: CommandLineTool
id: gustaf_mate_joining.cwl
inputs:
- id: rev_compl
  doc: Disable reverse complementing second input file.
  type: boolean
  inputBinding:
    prefix: --revcompl
- id: quiet
  doc: Set verbosity to a minimum.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: Enable verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: very_verbose
  doc: Enable very verbose output.
  type: boolean
  inputBinding:
    prefix: --very-verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- gustaf_mate_joining
