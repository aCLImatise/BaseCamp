class: CommandLineTool
id: stag_mogrify.pl.cwl
inputs:
- id: stag_mogrify
  doc: -w itext file1.xml file2.xml
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- stag-mogrify.pl
