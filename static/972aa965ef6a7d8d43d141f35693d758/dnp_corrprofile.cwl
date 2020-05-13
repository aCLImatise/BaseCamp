class: CommandLineTool
id: dnp_corrprofile.cwl
inputs:
- id: version_check
  doc: 'Turn this option off to disable version update notifications of the application.
    One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1.'
  type: boolean
  inputBinding:
    prefix: --version-check
- id: window
  doc: 'Sliding window size, < than length. In range [10..146]. Default: 10.'
  type: long
  inputBinding:
    prefix: --window
- id: length
  doc: 'Dinucleotide profile sequence length. In range [25..600]. Default: 600.'
  type: long
  inputBinding:
    prefix: --length
- id: verbose
  doc: Print parameters and variables.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- dnp-corrprofile
