class: CommandLineTool
id: checktrans.cwl
inputs:
- id: or_fml
  doc: integer    [100] Minimum ORF Length to report (Integer 1 or more)
  type: boolean
  inputBinding:
    prefix: -orfml
outputs: []
cwlVersion: v1.1
baseCommand:
- checktrans
