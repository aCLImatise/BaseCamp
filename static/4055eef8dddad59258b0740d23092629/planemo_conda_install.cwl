class: CommandLineTool
id: planemo_conda_install.cwl
inputs:
- id: recursive
  doc: Recursively perform command for subdirectories.
  type: boolean
  inputBinding:
    prefix: --recursive
- id: cond_a_prefix
  doc: Conda prefix to use for conda dependency commands.
  type: Directory
  inputBinding:
    prefix: --conda_prefix
- id: cond_a_exec
  doc: Location of conda executable.
  type: File
  inputBinding:
    prefix: --conda_exec
- id: cond_a_debug
  doc: Enable more verbose conda logging.
  type: boolean
  inputBinding:
    prefix: --conda_debug
- id: cond_a_ensure_channels
  doc: Ensure conda is configured with specified comma separated list of channels.
  type: string
  inputBinding:
    prefix: --conda_ensure_channels
- id: cond_a_use_local
  doc: Use locally built packages while building Conda environments.
  type: boolean
  inputBinding:
    prefix: --conda_use_local
- id: global
  doc: Install Conda dependencies globally instead of in requirement specific environments
    packaged for tools. If the Conda bin directory is on your PATH, tools may still
    use binaries but this is more designed for interactive testing and debugging.
  type: boolean
  inputBinding:
    prefix: --global
- id: cond_a_auto_in_it
  doc: / --no_conda_auto_init Conda dependency resolution for Galaxy will auto install
    conda itself using miniconda if not availabe on conda_prefix.
  type: boolean
  inputBinding:
    prefix: --conda_auto_init
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- conda_install
