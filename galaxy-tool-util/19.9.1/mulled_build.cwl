class: CommandLineTool
id: mulled_build.cwl
inputs:
- id: command
  doc: Command (build-and-test, build, all)
  type: string
  inputBinding:
    position: 0
- id: targets
  doc: Build a single container with specific package(s).
  type: string
  inputBinding:
    position: 1
- id: name_override
  doc: Override mulled image name - this is not recommended since metadata will not
    be detectable from the name of resulting images
  type: string
  inputBinding:
    prefix: --name-override
- id: image_build
  doc: Build a versioned variant of this image.
  type: string
  inputBinding:
    prefix: --image-build
- id: repository_name
  doc: Name of mulled container (leave blank to auto-generate based on packages -
    recommended).
  type: string
  inputBinding:
    prefix: --repository-name
- id: test
  doc: Provide a test command for the container.
  type: string
  inputBinding:
    prefix: --test
- id: test_files
  doc: Provide test-files that may be required to run the test command. Individual
    mounts are separated by comma.The source:dest docker syntax is respected. If relative
    file paths are given, files will be mounted in /source/<relative_file_path>
  type: string
  inputBinding:
    prefix: --test-files
outputs: []
cwlVersion: v1.1
baseCommand:
- mulled-build
