class: CommandLineTool
id: cleanUpSequences.pl.cwl
inputs:
- id: max
  doc: '# and -min # removes sequences that are longer than max and shorter than min(optional)'
  type: boolean
  inputBinding:
    prefix: -max
outputs: []
cwlVersion: v1.1
baseCommand:
- cleanUpSequences.pl
