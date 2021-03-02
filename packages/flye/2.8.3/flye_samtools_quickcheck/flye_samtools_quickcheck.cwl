class: CommandLineTool
id: flye_samtools_quickcheck.cwl
inputs:
- id: in_verbose_output_repeat
  doc: verbose output (repeat for more verbosity)
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_suppress_warning_messages
  doc: suppress warning messages
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_status_dot
  doc: One way to use quickcheck might be as a check that all BAM files in
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/flye:2.8.3--py38h1c8e9b9_0
cwlVersion: v1.1
baseCommand:
- flye-samtools
- quickcheck
