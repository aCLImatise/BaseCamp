class: CommandLineTool
id: excise_precursors_iterative_final.pl.cwl
inputs:
- id: in_output_progress_screen
  doc: Output progress to screen
  type: boolean
  inputBinding:
    prefix: -b
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- excise_precursors_iterative_final.pl
