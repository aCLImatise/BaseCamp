class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sailfish.cwl
inputs:
- id: print_version_string
  doc: '[ --version ]      print version string'
  type: boolean
  inputBinding:
    prefix: -v
- id: no_version_check
  doc: don't check with the server to see if this is the  latest version
  type: boolean
  inputBinding:
    prefix: --no-version-check
outputs: []
cwlVersion: v1.1
baseCommand:
- sailfish
