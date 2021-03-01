class: CommandLineTool
id: sailfish.cwl
inputs:
- id: in_print_version_string
  doc: '[ --version ]      print version string'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_no_version_check
  doc: "don't check with the server to see if this is the\nlatest version"
  type: boolean?
  inputBinding:
    prefix: --no-version-check
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sailfish
