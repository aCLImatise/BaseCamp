class: CommandLineTool
id: gsutil_version.cwl
inputs:
- id: l
  doc: Prints additional information, such as the version of Python being used, the
    version of the Boto library, a checksum of the code, the path to gsutil, and the
    path to gsutil's configuration file.
  type: boolean
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- version
