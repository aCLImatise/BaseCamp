class: CommandLineTool
id: preseq_lc_extrap.cwl
inputs:
- id: lc_extra_p
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: sorted_bed_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output
  doc: 'yield output file (default: stdout) '
  type: boolean
  inputBinding:
    prefix: -output
- id: extra_p
  doc: 'maximum extrapolation (default: 1e+10) '
  type: boolean
  inputBinding:
    prefix: -extrap
- id: step
  doc: 'step size in extrapolations (default: 1e+06) '
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
- id: bam
  doc: 'input is in BAM format '
  type: boolean
  inputBinding:
    prefix: -bam
- id: seg_len
  doc: 'maximum segment length when merging paired end bam reads  (default: 5000) '
  type: boolean
  inputBinding:
    prefix: -seg_len
- id: pe
  doc: 'input is paired end read file '
  type: boolean
  inputBinding:
    prefix: -pe
- id: vals
  doc: 'input is a text file containing only the observed counts '
  type: boolean
  inputBinding:
    prefix: -vals
- id: hist
  doc: 'input is a text file containing the observed histogram '
  type: boolean
  inputBinding:
    prefix: -hist
- id: quick
  doc: 'quick mode, estimate yield without bootstrapping for  confidence intervals '
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
- lc_extrap
