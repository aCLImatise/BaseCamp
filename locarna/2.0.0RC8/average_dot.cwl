class: CommandLineTool
id: average_dot.pl.cwl
inputs:
- id: man
  doc: full documentation
  type: boolean
  inputBinding:
    prefix: --man
- id: verbose
  doc: be verbose
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: be quiet
  type: boolean
  inputBinding:
    prefix: --quiet
- id: alignment
  doc: pp file representing the (Lo)Carna alignment
  type: File
  inputBinding:
    prefix: --alignment
- id: sequences
  doc: pp files for the input sequences
  type: File
  inputBinding:
    prefix: --sequences
- id: outfile
  doc: 'output file (DEFAULT: averagedot)'
  type: File
  inputBinding:
    prefix: --outfile
- id: threshold
  doc: for each given threshold (this option can be specified more than once) a copy
    of the orginal dotplots is created where the dots are highlighted that have in
    the average plot a probability above the threshold.
  type: double
  inputBinding:
    prefix: --threshold
outputs: []
cwlVersion: v1.1
baseCommand:
- average-dot.pl
