#!/usr/bin/env cwl-runner

baseCommand:
- mulled-build-tool
class: CommandLineTool
cwlVersion: v1.0
id: mulled-build-tool
inputs:
- doc: Command (build-and-test, build, all)
  id: command
  inputBinding:
    position: 0
  type: string
- doc: Path to tool to build mulled image for.
  id: tool
  inputBinding:
    position: 1
  type: string
- doc: Override mulled image name - this is not recommended since metadata will not
    be detectable from the name of resulting images
  id: name_override
  inputBinding:
    prefix: --name-override
  type: string
- doc: Build a versioned variant of this image.
  id: image_build
  inputBinding:
    prefix: --image-build
  type: string
