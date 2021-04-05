class: CommandLineTool
id: bactopia_pull.py.cwl
inputs:
- id: in_env_name
  doc: Build Singularity images with the given name
  type: string?
  inputBinding:
    prefix: --envname
- id: in_singularity_cache
  doc: Directory where Singularity images will be stored.
  type: Directory?
  inputBinding:
    prefix: --singularity_cache
- id: in_registry
  doc: Docker registry to pull containers from
  type: string?
  inputBinding:
    prefix: --registry
- id: in_max_retry
  doc: "Maximum times to attempt creating Conda environment.\n(Default: 5)"
  type: long?
  inputBinding:
    prefix: --max_retry
- id: in_include_tools
  doc: Singularity images for Bactopia Tools will also be
  type: boolean?
  inputBinding:
    prefix: --include_tools
- id: in_force
  doc: Force overwrite of existing Conda environments.
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_verbose
  doc: Print debug related text.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_silent
  doc: Only critical errors will be printed.
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_built_dot
  doc: --default             Builds Singularity images to the default Bactopia
  type: string
  inputBinding:
    position: 0
- id: in_location_dot
  doc: --is_bactopia         This is an automated call by bactopia not a user
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bactopia:1.6.4--0
cwlVersion: v1.1
baseCommand:
- bactopia-pull.py
