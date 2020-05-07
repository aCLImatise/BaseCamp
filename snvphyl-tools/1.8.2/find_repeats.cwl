class: CommandLineTool
id: find_repeats.pl.cwl
inputs:
- id: min_length
  doc: ': Minimum length of repeat region (150).'
  type: boolean
  inputBinding:
    prefix: --min-length
- id: min_pid
  doc: ': Minimum PID of repeat region (90).'
  type: boolean
  inputBinding:
    prefix: --min-pid
- id: keep_temp
  doc: ': Keep around temporary nucmer/coords files (no).'
  type: boolean
  inputBinding:
    prefix: --keep-temp
outputs: []
cwlVersion: v1.1
baseCommand:
- find-repeats.pl
