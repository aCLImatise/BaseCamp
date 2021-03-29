class: CommandLineTool
id: add_track_json.pl.cwl
inputs:
- id: in_file_dot
  doc: For example, if you wanted to add a sequence track to
  type: File
  inputBinding:
    position: 0
- id: in_options
  doc: none yet
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/jbrowse:1.16.11--pl526hc9558a2_0
cwlVersion: v1.1
baseCommand:
- add-track-json.pl
