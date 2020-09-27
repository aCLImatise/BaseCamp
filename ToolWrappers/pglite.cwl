class: CommandLineTool
id: pglite.cwl
inputs:
- id: in_personality
  doc: "|postgres\nDefaults to `postgres`. The `pipeline` personality exists to support\n\
    PipelineDB."
  type: string
  inputBinding:
    prefix: --personality
- id: in_directory
  doc: "/path/to/data\nDefaults to `./var`.\n"
  type: boolean
  inputBinding:
    prefix: --directory
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pglite
