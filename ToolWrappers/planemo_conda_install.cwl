class: CommandLineTool
id: planemo_conda_install.cwl
inputs:
- id: in_recursive
  doc: Recursively perform command for
  type: boolean
  inputBinding:
    prefix: --recursive
- id: in_cond_a_debug
  doc: Enable more verbose conda logging.
  type: boolean
  inputBinding:
    prefix: --conda_debug
- id: in_cond_a_ensure_channels
  doc: "Ensure conda is configured with specified\ncomma separated list of channels."
  type: string
  inputBinding:
    prefix: --conda_ensure_channels
- id: in_cond_a_use_local
  doc: "Use locally built packages while building\nConda environments."
  type: boolean
  inputBinding:
    prefix: --conda_use_local
- id: in_global
  doc: "Install Conda dependencies globally instead\nof in requirement specific environments\n\
    packaged for tools. If the Conda bin\ndirectory is on your PATH, tools may still\n\
    use binaries but this is more designed for\ninteractive testing and debugging."
  type: boolean
  inputBinding:
    prefix: --global
- id: in_cond_a_auto_in_it
  doc: "/ --no_conda_auto_init\nConda dependency resolution for Galaxy will\nauto\
    \ install conda itself using miniconda if\nnot availabe on conda_prefix."
  type: boolean
  inputBinding:
    prefix: --conda_auto_init
- id: in_subdirectories_dot
  doc: --conda_prefix DIRECTORY        Conda prefix to use for conda dependency
  type: string
  inputBinding:
    position: 0
- id: in_commands_dot
  doc: --conda_exec FILE               Location of conda executable.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- planemo
- conda_install
