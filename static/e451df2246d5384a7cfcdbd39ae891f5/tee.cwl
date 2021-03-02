class: CommandLineTool
id: tee.cwl
inputs:
- id: in_append
  doc: append to the given FILEs, do not overwrite
  type: boolean?
  inputBinding:
    prefix: --append
- id: in_ignore_interrupts
  doc: ignore interrupt signals
  type: boolean?
  inputBinding:
    prefix: --ignore-interrupts
- id: in_diagnose_errors_writing
  doc: diagnose errors writing to non pipes
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_output_error
  doc: '[=MODE]   set behavior on write error.  See MODE below'
  type: boolean?
  inputBinding:
    prefix: --output-error
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tee
