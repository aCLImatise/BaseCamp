class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/remove_track.pl.cwl
inputs:
- id: quiet
  doc: Do not print any progress messages.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- remove-track.pl
