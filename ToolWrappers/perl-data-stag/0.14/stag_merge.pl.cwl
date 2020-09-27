class: CommandLineTool
id: stag_merge.pl.cwl
inputs:
- id: in_stag_merge_do_tpl
  doc: -xml file1.xml file2.xml
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- stag-merge.pl
