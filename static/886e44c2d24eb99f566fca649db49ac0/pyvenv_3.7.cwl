class: CommandLineTool
id: pyvenv_3.7.cwl
inputs:
- id: in_system_site_packages
  doc: "Give the virtual environment access to the system\nsite-packages dir."
  type: boolean?
  inputBinding:
    prefix: --system-site-packages
- id: in_symlinks
  doc: "Try to use symlinks rather than copies, when symlinks\nare not the default\
    \ for the platform."
  type: boolean?
  inputBinding:
    prefix: --symlinks
- id: in_copies
  doc: "Try to use copies rather than symlinks, even when\nsymlinks are the default\
    \ for the platform."
  type: boolean?
  inputBinding:
    prefix: --copies
- id: in_clear
  doc: "Delete the contents of the environment directory if it\nalready exists, before\
    \ environment creation."
  type: boolean?
  inputBinding:
    prefix: --clear
- id: in_upgrade
  doc: "Upgrade the environment directory to use this version\nof Python, assuming\
    \ Python has been upgraded in-place."
  type: boolean?
  inputBinding:
    prefix: --upgrade
- id: in_without_pip
  doc: "Skips installing or upgrading pip in the virtual\nenvironment (pip is bootstrapped\
    \ by default)"
  type: boolean?
  inputBinding:
    prefix: --without-pip
- id: in_prompt
  doc: Provides an alternative prompt prefix for this
  type: string?
  inputBinding:
    prefix: --prompt
- id: in_env_dir
  doc: A directory to create the environment in.
  type: string
  inputBinding:
    position: 0
- id: in_environment_dot
  doc: Once an environment has been created, you may wish to activate it, e.g. by
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pyvenv-3.7
