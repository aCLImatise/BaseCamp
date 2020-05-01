#!/usr/bin/env cwl-runner

baseCommand:
- mulled-build
class: CommandLineTool
cwlVersion: v1.0
id: mulled-build
inputs:
- doc: Command (build-and-test, build, all)
  id: command
  inputBinding:
    position: 0
  type: string
- doc: Build a single container with specific package(s).
  id: targets
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
- doc: Name of mulled container (leave blank to auto-generate based on packages -
    recommended).
  id: repository_name
  inputBinding:
    prefix: --repository-name
  type: string
- doc: Provide a test command for the container.
  id: test
  inputBinding:
    prefix: --test
  type: string
- doc: Provide test-files that may be required to run the test command. Individual
    mounts are separated by comma.The source:dest docker syntax is respected. If relative
    file paths are given, files will be mounted in /source/<relative_file_path>
  id: test_files
  inputBinding:
    prefix: --test-files
  type: string
