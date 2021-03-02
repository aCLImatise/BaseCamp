class: CommandLineTool
id: pore_c_contacts_downsample.cwl
inputs:
- id: in_random_seed
  doc: "Check if the difference between the sampled\namout and the target amount is\
    \ greater than\nthis proportion"
  type: long?
  inputBinding:
    prefix: --random-seed
- id: in_warn
  doc: "If the a sample fails the --tol check print a\nwarning rather than exiting"
  type: boolean?
  inputBinding:
    prefix: --warn
- id: in_max_attempts
  doc: "The number of times to try and find a set of\nsubsamples all within --tol"
  type: long?
  inputBinding:
    prefix: --max-attempts
- id: in_dest_contact_table_prefix
  doc: '[DOWNSAMPLE_INCREMENTS]...'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pore-c:0.3.0--py_0
cwlVersion: v1.1
baseCommand:
- pore_c
- contacts
- downsample
