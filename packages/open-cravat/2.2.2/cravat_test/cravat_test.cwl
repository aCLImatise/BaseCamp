class: CommandLineTool
id: cravat_test.cwl
inputs:
- id: in_run_dir
  doc: Directory for output
  type: Directory?
  inputBinding:
    prefix: --rundir
- id: in_modules
  doc: Name of module(s) to test. (e.g. gnomad)
  type: string[]
  inputBinding:
    prefix: --modules
- id: in_mod_types
  doc: "Type of module(s) to test (e.g. annotators)\n"
  type: string[]
  inputBinding:
    prefix: --mod_types
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_run_dir
  doc: Directory for output
  type: Directory?
  outputBinding:
    glob: $(inputs.in_run_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- cravat-test
