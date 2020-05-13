class: CommandLineTool
id: pyomo_check.cwl
inputs:
- id: script
  doc: A Pyomo script that is checked
  type: string
  inputBinding:
    position: 0
- id: verbose
  doc: Enable additional output messages
  type: boolean
  inputBinding:
    prefix: --verbose
- id: enable_checker
  doc: Activate a specific checker
  type: string
  inputBinding:
    prefix: --enable-checker
- id: enable_package
  doc: Activate an entire checker package
  type: string
  inputBinding:
    prefix: --enable-package
- id: disable_checker
  doc: Disable a specific checker
  type: string
  inputBinding:
    prefix: --disable-checker
- id: disable_package
  doc: Disable an entire checker package
  type: string
  inputBinding:
    prefix: --disable-package
- id: show_checkers
  doc: Show enabled checkers
  type: boolean
  inputBinding:
    prefix: --show-checkers
outputs: []
cwlVersion: v1.1
baseCommand:
- pyomo
- check
