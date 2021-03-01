class: CommandLineTool
id: mykrobe_panels_update_metadata.cwl
inputs:
- id: in_panels_dir
  doc: "Name of directory that contains panel data. Default:\n/usr/local/lib/python3.6/site-packages/mykrobe/data"
  type: Directory?
  inputBinding:
    prefix: --panels_dir
- id: in_quiet
  doc: Only output warnings/errors to stderr
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_debug
  doc: Output debugging information to stderr
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mykrobe:0.9.0--py36hd181a71_2
cwlVersion: v1.1
baseCommand:
- mykrobe
- panels
- update_metadata
