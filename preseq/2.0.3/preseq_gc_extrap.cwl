class: CommandLineTool
id: preseq_gc_extrap.cwl
inputs:
- id: gc_extra_p
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: sorted_mapped_read_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output
  doc: 'coverage yield output file (default: stdout) '
  type: boolean
  inputBinding:
    prefix: -output
- id: max_width
  doc: 'max fragment length, set equal to read length for single end  reads '
  type: boolean
  inputBinding:
    prefix: -max_width
- id: bin_size
  doc: 'bin size (default: 10) '
  type: boolean
  inputBinding:
    prefix: -bin_size
- id: extra_p
  doc: 'maximum extrapolation in base pairs(default: 1e+12) '
  type: boolean
  inputBinding:
    prefix: -extrap
- id: step
  doc: 'step size in bases between extrapolations (default: 1e+08) '
  type: boolean
  inputBinding:
    prefix: -step
- id: bootstraps
  doc: 'number of bootstraps (default: 100), '
  type: boolean
  inputBinding:
    prefix: -bootstraps
- id: cval
  doc: 'level for confidence intervals (default: 0.95) '
  type: boolean
  inputBinding:
    prefix: -cval
- id: terms
  doc: 'maximum number of terms '
  type: boolean
  inputBinding:
    prefix: -terms
- id: verbose
  doc: 'print more information '
  type: boolean
  inputBinding:
    prefix: -verbose
- id: bed
  doc: 'input is in bed format without sequence information '
  type: boolean
  inputBinding:
    prefix: -bed
- id: quick
  doc: 'quick mode: run gc_extrap without bootstrapping for  confidence intervals '
  type: boolean
  inputBinding:
    prefix: -quick
- id: defects
  doc: 'defects mode to extrapolate without testing for defects '
  type: boolean
  inputBinding:
    prefix: -defects
- id: seed
  doc: 'seed for random number generator '
  type: boolean
  inputBinding:
    prefix: -seed
- id: about
  doc: 'print about message '
  type: boolean
  inputBinding:
    prefix: -about
outputs: []
cwlVersion: v1.1
baseCommand:
- preseq
- gc_extrap
