class: CommandLineTool
id: mulled_build_channel.cwl
inputs:
- id: command
  doc: Command (list, build-and-test, build, all)
  type: string
  inputBinding:
    position: 0
- id: targets
  doc: Build a single container with specific package(s).
  type: string
  inputBinding:
    prefix: --targets
- id: repository_name
  doc: Name of a single container (leave blank to auto-generate based on packages).
  type: string
  inputBinding:
    prefix: --repository-name
outputs: []
cwlVersion: v1.1
baseCommand:
- mulled-build-channel
