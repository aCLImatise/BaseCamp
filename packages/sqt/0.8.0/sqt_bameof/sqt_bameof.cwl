class: CommandLineTool
id: ../../../sqt_bameof.cwl
inputs:
- id: in_quiet
  doc: Don't print anything, just set the exit code.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sqt
- bameof
