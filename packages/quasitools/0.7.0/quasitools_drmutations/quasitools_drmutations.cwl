class: CommandLineTool
id: ../../../quasitools_drmutations.cwl
inputs:
- id: in_min_freq
  doc: the minimum required frequency.
  type: double
  inputBinding:
    prefix: --min_freq
- id: in_reporting_threshold
  doc: "the minimum percentage required for an entry\nin the drugresistant report."
  type: long
  inputBinding:
    prefix: --reporting_threshold
- id: in_output
  doc: ''
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- quasitools
- drmutations
