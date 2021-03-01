class: CommandLineTool
id: oc_util_send_gui.cwl
inputs:
- id: in_user
  doc: "User who will own the job. Defaults to single user\ndefault user.\n"
  type: string?
  inputBinding:
    prefix: --user
- id: in_path
  doc: Path to result database
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- oc
- util
- send-gui
