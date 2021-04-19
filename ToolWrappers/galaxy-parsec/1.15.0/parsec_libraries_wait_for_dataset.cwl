class: CommandLineTool
id: parsec_libraries_wait_for_dataset.cwl
inputs:
- id: in_max_wait
  doc: "Total time (in seconds) to wait for the dataset state to\nbecome terminal.\
    \ If the dataset state is not terminal\nwithin this time, a ``DatasetTimeoutException``\
    \ will be\nthrown.  [default: 12000]"
  type: double?
  inputBinding:
    prefix: --maxwait
- id: in_interval
  doc: "Time (in seconds) to wait between 2 consecutive checks.\n[default: 3]"
  type: double?
  inputBinding:
    prefix: --interval
- id: in_library
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- parsec
- libraries
- wait_for_dataset
