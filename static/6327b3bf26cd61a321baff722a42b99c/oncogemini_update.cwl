class: CommandLineTool
id: oncogemini_update.cwl
inputs:
- id: in_devel
  doc: Get the latest development version instead of the
  type: boolean?
  inputBinding:
    prefix: --devel
- id: in_no_data
  doc: Do not install data dependencies
  type: boolean?
  inputBinding:
    prefix: --nodata
- id: in_extra
  doc: "Add additional non-standard genome annotations to\ninclude"
  type: string?
  inputBinding:
    prefix: --extra
- id: in_tool_dir
  doc: Directory for third party tools (ie /usr/local) update
  type: Directory?
  inputBinding:
    prefix: --tooldir
- id: in_data_only
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --dataonly
- id: in_release
  doc: --dataonly            Only update data, not the underlying libraries.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/oncogemini:1.0.0--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- oncogemini
- update
