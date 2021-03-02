class: CommandLineTool
id: shigeifinder.cwl
inputs:
- id: in_string_pathtoinputdata
  doc: '<string>: path/to/input_data'
  type: string[]
  inputBinding:
    prefix: -i
- id: in_add_flag_is
  doc: Add flag if file is raw reads.
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_number_threads_default
  doc: number of threads. Default 4.
  type: long?
  inputBinding:
    prefix: -t
- id: in_hits
  doc: To show the blast/alignment hits
  type: boolean?
  inputBinding:
    prefix: --hits
- id: in_d_ratio
  doc: "To show the depth ratios of cluster-specific genes to House\nKeeping genes"
  type: boolean?
  inputBinding:
    prefix: --dratio
- id: in_update_db
  doc: Add flag if you added new sequences to genes database.
  type: boolean?
  inputBinding:
    prefix: --update_db
- id: in_output
  doc: output file to write to (if not used writes to stdout)
  type: File?
  inputBinding:
    prefix: --output
- id: in_check
  doc: To show the blast/alignment hits
  type: boolean?
  inputBinding:
    prefix: --check
- id: in_or
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output file to write to (if not used writes to stdout)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/shigeifinder:1.2.0--py_0
cwlVersion: v1.1
baseCommand:
- shigeifinder
