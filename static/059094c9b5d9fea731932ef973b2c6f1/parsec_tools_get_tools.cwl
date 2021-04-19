class: CommandLineTool
id: parsec_tools_get_tools.cwl
inputs:
- id: in_tool_id
  doc: id of the requested tool
  type: string?
  inputBinding:
    prefix: --tool_id
- id: in_name
  doc: name of the requested tool(s)
  type: string?
  inputBinding:
    prefix: --name
- id: in_return_only_tools
  doc: whether to return only tools that are compatible with
  type: boolean?
  inputBinding:
    prefix: --trackster
- id: in_both_dot
  doc: "Output:\nList of tool descriptions.\n.. seealso:: bioblend.galaxy.toolshed.get_repositories()"
  type: string
  inputBinding:
    position: 0
- id: in__help_show
  doc: -h, --help      Show this message and exit.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- parsec
- tools
- get_tools
