class: CommandLineTool
id: bundlelinks.cwl
inputs:
- id: in_max_gap
  doc: "{-min_bundle_membership NUM | -strict }\n{-min_bundle_size NUM}\n{-min_bundle_identity\
    \ FRACTION}\n-chr1 CHR1\n-chr2 CHR2\n"
  type: long
  inputBinding:
    prefix: -max_gap
- id: in_links
  doc: ''
  type: File
  inputBinding:
    prefix: -links
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bundlelinks
