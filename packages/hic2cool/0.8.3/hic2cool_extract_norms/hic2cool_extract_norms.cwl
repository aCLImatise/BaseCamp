class: CommandLineTool
id: ../../../hic2cool_extract_norms.cwl
inputs:
- id: in_exclude_mt
  doc: if used, exclude the mitochondria (MT) from the output
  type: boolean
  inputBinding:
    prefix: --exclude-mt
- id: in_silent
  doc: if used, silence standard program output
  type: boolean
  inputBinding:
    prefix: --silent
- id: in_warnings
  doc: "if used, print out non-critical WARNING messages, which\nare hidden by default.\
    \ Silent mode takes precedence over\nthis\n"
  type: boolean
  inputBinding:
    prefix: --warnings
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hic2cool
- extract-norms
