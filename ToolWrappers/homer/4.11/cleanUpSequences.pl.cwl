class: CommandLineTool
id: cleanUpSequences.pl.cwl
inputs:
- id: in_max
  doc: '# and -min # removes sequences that are longer than max and shorter than min(optional)'
  type: boolean?
  inputBinding:
    prefix: -max
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cleanUpSequences.pl
