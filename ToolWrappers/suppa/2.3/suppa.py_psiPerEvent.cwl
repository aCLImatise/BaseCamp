class: CommandLineTool
id: suppa.py_psiPerEvent.cwl
inputs:
- id: in_ioe_file
  doc: "Input file with the event-transcripts equivalence\n(.ioe format)."
  type: File?
  inputBinding:
    prefix: --ioe-file
- id: in_expression_file
  doc: Input transcript expression file.
  type: File?
  inputBinding:
    prefix: --expression-file
- id: in_output_file
  doc: Output psi file.
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_total_filter
  doc: "Minimum total expression of the transcripts involved\nin the event."
  type: string?
  inputBinding:
    prefix: --total-filter
- id: in_save_tpm_events
  doc: "Boolean. If True, save the TPM of the events in an\nexternal file (Default:\
    \ False)."
  type: boolean?
  inputBinding:
    prefix: --save_tpm_events
- id: in_mode
  doc: "to choose from DEBUG, INFO, WARNING, ERROR and\nCRITICAL\n"
  type: string?
  inputBinding:
    prefix: --mode
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Output psi file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- suppa.py
- psiPerEvent
