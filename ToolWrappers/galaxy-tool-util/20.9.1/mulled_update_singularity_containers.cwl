class: CommandLineTool
id: mulled_update_singularity_containers.cwl
inputs:
- id: in_containers
  doc: "Containers to be generated. If the number of\ncontainers is large, it may\
    \ be simpler to use the\n--containers-list option."
  type: string[]
  inputBinding:
    prefix: --containers
- id: in_container_list
  doc: "Name of file containing list of containers to be\ngenerated. Alternative to\
    \ --containers."
  type: File?
  inputBinding:
    prefix: --container-list
- id: in_file_path
  doc: "File path where newly-built Singularity containers are\nplaced."
  type: File?
  inputBinding:
    prefix: --filepath
- id: in_installation
  doc: File path of Singularity installation.
  type: File?
  inputBinding:
    prefix: --installation
- id: in_no_sudo
  doc: Build containers without sudo.
  type: boolean?
  inputBinding:
    prefix: --no-sudo
- id: in_testing
  doc: "Performs testing automatically - a name for the output\nfile should be provided.\
    \ (Alternatively, testing may\nbe done using the separate testing tool.\n"
  type: File?
  inputBinding:
    prefix: --testing
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_testing
  doc: "Performs testing automatically - a name for the output\nfile should be provided.\
    \ (Alternatively, testing may\nbe done using the separate testing tool.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_testing)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/galaxy-tool-util:20.9.1--py_0
cwlVersion: v1.1
baseCommand:
- mulled-update-singularity-containers
