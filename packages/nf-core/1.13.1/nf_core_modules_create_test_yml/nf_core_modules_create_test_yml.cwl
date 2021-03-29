class: CommandLineTool
id: nf_core_modules_create_test_yml.cwl
inputs:
- id: in_tool
  doc: or <tool/subtool>
  type: string?
  inputBinding:
    prefix: --tool
- id: in_run_tests
  doc: Run the test workflows
  type: boolean?
  inputBinding:
    prefix: --run-tests
- id: in_output
  doc: Path for output YAML file
  type: File?
  inputBinding:
    prefix: --output
- id: in_force
  doc: Overwrite output YAML file if it already
  type: File?
  inputBinding:
    prefix: --force
- id: in_files_dot
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
- id: in_exists
  doc: -p, --no-prompts                Use defaults without prompting
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Path for output YAML file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_force
  doc: Overwrite output YAML file if it already
  type: File?
  outputBinding:
    glob: $(inputs.in_force)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nf-core:1.13.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- nf-core
- modules
- create-test-yml
