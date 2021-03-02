class: CommandLineTool
id: gdtools_NORMALIZE.cwl
inputs:
- id: in_verbose
  doc: verbose mode (flag)
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_output
  doc: output Genome Diff file. (DEFAULT=output.gd)
  type: File?
  inputBinding:
    prefix: --output
- id: in_reference
  doc: File containing reference sequences in GenBank, GFF3, or FASTA format. Option
    may be provided multiple times for multiple files (REQUIRED)
  type: File?
  inputBinding:
    prefix: --reference
- id: in_reassign_ids
  doc: reassign ids to lowest numbers possible.
  type: boolean?
  inputBinding:
    prefix: --reassign-ids
- id: in_repeat_adjacent
  doc: mark repeat-region adjacent, mediated, and between mutations.
  type: boolean?
  inputBinding:
    prefix: --repeat-adjacent
- id: in_dont_check_apply
  doc: skip step that checks consistency of normalize using APPLY.
  type: boolean?
  inputBinding:
    prefix: --dont-check-apply
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output Genome Diff file. (DEFAULT=output.gd)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- gdtools
- NORMALIZE
