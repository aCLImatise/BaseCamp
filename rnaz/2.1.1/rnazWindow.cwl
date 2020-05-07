class: CommandLineTool
id: rnazWindow.pl.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: both_strands
  doc: 'Output forward, reverse complement or both of the sequences in the windows.
    Please note: "RNAz" has the same options, so if you use "rnazWindow.pl" for an
    RNAz screen, we recommend to set the option directly in "RNAz" and leave the default
    here. (Default: ---forward)'
  type: boolean
  inputBinding:
    prefix: --both-strands
- id: no_reference
  doc: By default the first sequence is interpreted as reference sequence. This means,
    for example, that if the reference sequence is removed during filtering steps
    the complete alignment is discarded. Also, if there are too many sequences in
    the alignment, the reference sequence is never removed when choosing an appropriate
    subset. Having a reference sequence is crucial if you are doing screens of genomic
    regions. For some other applications it might not be necessary and in such cases
    you can change the default behaviour by setting this option.
  type: boolean
  inputBinding:
    prefix: --no-reference
- id: no_range_check
  doc: By default, all sequences of all windows are discarded, if the length or base
    composition is outside the training range of RNAz, independent of the window-size
    commandline parameter. However with the flag --no-rangecheck such sequences outside
    the training range are not discarded. As of version 2.0, RNAz can cope with sequences
    outside this traning range. However the same quality of the RNAz results cannot
    be guaranteed if sequences outside the default range are present.
  type: boolean
  inputBinding:
    prefix: --no-rangecheck
- id: verbose
  doc: Verbose output on STDERR, describing all performed filtering steps.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: man
  doc: Prints a detailed manual page and exits.
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- rnazWindow.pl
