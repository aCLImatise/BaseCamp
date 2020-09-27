class: CommandLineTool
id: virmet_tidytable.cwl
inputs:
- id: in_outdir
  doc: path to run results directory (virmet_output_...)
  type: File
  inputBinding:
    prefix: --outdir
- id: in_vir_met
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_tidy_table
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- virmet
- tidytable
