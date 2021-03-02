class: CommandLineTool
id: dx_generate_dxapp.cwl
inputs:
- id: in_target_module
  doc: "The fully-qualified module that contains the target\nmethod."
  type: string?
  inputBinding:
    prefix: --target-module
- id: in_target_function
  doc: "The main function that is called by the target\nexecutable. This should bewhere\
    \ the ArgumentParser is\nconfigured."
  type: string?
  inputBinding:
    prefix: --target-function
- id: in_target_executable
  doc: "The name of the executable. This is used in the\ndxapp.json runSpec."
  type: string?
  inputBinding:
    prefix: --target-executable
- id: in_subcommand
  doc: Subcommand to pass to the target method, if required.
  type: string?
  inputBinding:
    prefix: --subcommand
- id: in_output_file
  doc: "The output dxapp.json file. If not specified, output\nwill go to stdout."
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_output_params
  doc: "Names of output parameters (in case they can't be\nautodetected)."
  type: string[]
  inputBinding:
    prefix: --output-params
- id: in_output_param_regexp
  doc: "Regular expression that identifies output parameter\nnames."
  type: string?
  inputBinding:
    prefix: --output-param-regexp
- id: in_interpreter
  doc: Type of script that will wrap the executable.
  type: string?
  inputBinding:
    prefix: --interpreter
- id: in_instance_type
  doc: AWS instance type to use.
  type: string?
  inputBinding:
    prefix: --instance-type
- id: in_timeout
  doc: Max runtime of this app (in hours).
  type: long?
  inputBinding:
    prefix: --timeout
- id: in_distribution
  doc: Distribution to use for the machine image.
  type: string?
  inputBinding:
    prefix: --distribution
- id: in_release
  doc: Distribution release to use for the machine image.
  type: string?
  inputBinding:
    prefix: --release
- id: in_run_spec_version
  doc: "Version of the application execution environment\ninside the runSpec block.\n"
  type: string?
  inputBinding:
    prefix: --runspec-version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "The output dxapp.json file. If not specified, output\nwill go to stdout."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dxpy:0.306.0--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- dx-generate-dxapp
