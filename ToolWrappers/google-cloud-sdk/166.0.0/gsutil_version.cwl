class: CommandLineTool
id: gsutil_version.cwl
inputs:
- id: in_prints_additional_information
  doc: "Prints additional information, such as the version of Python\nbeing used,\
    \ the version of the Boto library, a checksum of the\ncode, the path to gsutil,\
    \ and the path to gsutil's configuration\nfile.\n"
  type: boolean?
  inputBinding:
    prefix: -l
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gsutil
- version
