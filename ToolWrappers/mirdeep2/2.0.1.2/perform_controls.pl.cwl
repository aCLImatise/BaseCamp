class: CommandLineTool
id: perform_controls.pl.cwl
inputs:
- id: in_output_progress_screen
  doc: Output progress to screen
  type: boolean
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- perform_controls.pl
