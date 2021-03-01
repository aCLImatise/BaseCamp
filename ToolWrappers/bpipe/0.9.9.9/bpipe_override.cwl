class: CommandLineTool
id: bpipe_override.cwl
inputs:
- id: in_comment_add_given
  doc: comment to add to given operation
  type: string?
  inputBinding:
    prefix: -c
- id: in_fail_specified_check
  doc: fail specified check
  type: string?
  inputBinding:
    prefix: -f
- id: in_list_checks_mode
  doc: list checks and exit, non-interactive mode
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_override_specified_check
  doc: override specified check to force it to pass
  type: string?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bpipe
- override
