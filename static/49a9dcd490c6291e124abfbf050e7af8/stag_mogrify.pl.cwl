class: CommandLineTool
id: stag_mogrify.pl.cwl
inputs:
- id: in_stag_mogrify
  doc: -w itext file1.xml file2.xml
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- stag-mogrify.pl
