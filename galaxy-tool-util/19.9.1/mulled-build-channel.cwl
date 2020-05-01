#!/usr/bin/env cwl-runner

baseCommand:
- mulled-build-channel
class: CommandLineTool
cwlVersion: v1.0
id: mulled-build-channel
inputs:
- doc: Command (list, build-and-test, build, all)
  id: command
  inputBinding:
    position: 0
  type: string
- doc: Build a single container with specific package(s).
  id: targets
  inputBinding:
    prefix: --targets
  type: string
- doc: Name of a single container (leave blank to auto-generate based on packages).
  id: repository_name
  inputBinding:
    prefix: --repository-name
  type: string
