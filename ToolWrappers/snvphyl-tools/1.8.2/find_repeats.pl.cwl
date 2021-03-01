class: CommandLineTool
id: find_repeats.pl.cwl
inputs:
- id: in_min_length
  doc: ': Minimum length of repeat region (150).'
  type: boolean?
  inputBinding:
    prefix: --min-length
- id: in_min_pid
  doc: ': Minimum PID of repeat region (90).'
  type: boolean?
  inputBinding:
    prefix: --min-pid
- id: in_keep_temp
  doc: ': Keep around temporary nucmer/coords files (no).'
  type: boolean?
  inputBinding:
    prefix: --keep-temp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- find-repeats.pl
