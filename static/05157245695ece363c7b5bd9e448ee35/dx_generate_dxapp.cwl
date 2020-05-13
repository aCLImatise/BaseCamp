class: CommandLineTool
id: dx_generate_dxapp.cwl
inputs:
- id: target_module
  doc: The fully-qualified module that contains the target method.
  type: string
  inputBinding:
    prefix: --target-module
- id: target_function
  doc: The main function that is called by the target executable. This should bewhere
    the ArgumentParser is configured.
  type: string
  inputBinding:
    prefix: --target-function
- id: target_executable
  doc: The name of the executable. This is used in the dxapp.json runSpec.
  type: string
  inputBinding:
    prefix: --target-executable
- id: subcommand
  doc: Subcommand to pass to the target method, if required.
  type: string
  inputBinding:
    prefix: --subcommand
- id: output_file
  doc: The output dxapp.json file. If not specified, output will go to stdout.
  type: string
  inputBinding:
    prefix: --output-file
- id: output_params
  doc: Names of output parameters (in case they can't be autodetected).
  type: string[]
  inputBinding:
    prefix: --output-params
- id: output_param_regexp
  doc: Regular expression that identifies output parameter names.
  type: string
  inputBinding:
    prefix: --output-param-regexp
- id: n
  doc: '{bash,python2.7}, --interpreter {bash,python2.7} Type of script that will
    wrap the executable.'
  type: boolean
  inputBinding:
    prefix: -n
- id: instance_type
  doc: AWS instance type to use.
  type: string
  inputBinding:
    prefix: --instance-type
- id: timeout
  doc: Max runtime of this app (in hours).
  type: string
  inputBinding:
    prefix: --timeout
- id: distribution
  doc: Distribution to use for the machine image.
  type: string
  inputBinding:
    prefix: --distribution
- id: release
  doc: Distribution release to use for the machine image.
  type: string
  inputBinding:
    prefix: --release
outputs: []
cwlVersion: v1.1
baseCommand:
- dx-generate-dxapp
