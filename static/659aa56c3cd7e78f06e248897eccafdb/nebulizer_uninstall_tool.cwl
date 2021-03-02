class: CommandLineTool
id: nebulizer_uninstall_tool.cwl
inputs:
- id: in_remove_from_disk
  doc: "remove the uninstalled tool from disk (otherwise tool is\njust deactivated)."
  type: boolean?
  inputBinding:
    prefix: --remove_from_disk
- id: in_yes
  doc: don't ask for confirmation of uninstallation.
  type: boolean?
  inputBinding:
    prefix: --yes
- id: in_fast_qc
  doc: The tool must already be present in GALAXY; a revision must be specified
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- uninstall_tool
