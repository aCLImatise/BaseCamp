class: CommandLineTool
id: alevin_fry_generate_permit_list_FLAGS.cwl
inputs:
- id: in_unfiltered_pl
  doc: ''
  type: string?
  inputBinding:
    prefix: --unfiltered-pl
- id: in_valid_bc
  doc: ''
  type: string?
  inputBinding:
    prefix: --valid-bc
- id: in_force_cells
  doc: ''
  type: string?
  inputBinding:
    prefix: --force-cells
- id: in_expect_cells
  doc: ''
  type: string?
  inputBinding:
    prefix: --expect-cells
- id: in_output_dir
  doc: ''
  type: string?
  inputBinding:
    prefix: --output-dir
- id: in_expected_ori
  doc: ''
  type: string?
  inputBinding:
    prefix: --expected-ori
- id: in_input
  doc: ''
  type: string?
  inputBinding:
    prefix: --input
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/alevin-fry:0.2.0--h7d875b9_0
cwlVersion: v1.1
baseCommand:
- alevin-fry
- generate-permit-list
- FLAGS
