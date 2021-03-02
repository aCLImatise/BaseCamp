class: CommandLineTool
id: bactopia_build.py.cwl
inputs:
- id: in_ext
  doc: 'Extension of the Conda environment files. Default: .yml'
  type: string?
  inputBinding:
    prefix: --ext
- id: in_env_name
  doc: Build Conda environment with the given name
  type: string?
  inputBinding:
    prefix: --envname
- id: in_default
  doc: Builds Conda environments to the default Bactopia
  type: boolean?
  inputBinding:
    prefix: --default
- id: in_force
  doc: Force overwrite of existing Conda environments.
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_is_bac_topia
  doc: This is an automated call by bactopia not a user
  type: boolean?
  inputBinding:
    prefix: --is_bactopia
- id: in_include_tools
  doc: Builds Conda environments for Bactopia tools as well.
  type: boolean?
  inputBinding:
    prefix: --include_tools
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
- id: in_location_dot
  doc: --max_retry INT    Maximum times to attempt creating Conda environment.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bactopia:1.6.1--0
cwlVersion: v1.1
baseCommand:
- bactopia-build.py
