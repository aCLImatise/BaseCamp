class: CommandLineTool
id: samtools_quickcheck.cwl
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
- id: in_unmapped_input_require
  doc: unmapped input (do not require targets in header)
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_status_dot
  doc: One way to use quickcheck might be as a check that all BAM files in
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- samtools
- quickcheck
