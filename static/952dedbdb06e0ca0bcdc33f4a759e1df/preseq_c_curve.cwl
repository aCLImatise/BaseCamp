class: CommandLineTool
id: preseq_c_curve.cwl
inputs:
- id: c_curve
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
- id: step
  doc: 'step size in extrapolations (default: 1e+06) '
  type: boolean
  inputBinding:
    prefix: -step
- id: verbose
  doc: 'print more information '
  type: boolean
  inputBinding:
    prefix: -verbose
- id: pe
  doc: 'input is paired end read file '
  type: boolean
  inputBinding:
    prefix: -pe
- id: hist
  doc: 'input is a text file containing the observed histogram '
  type: boolean
  inputBinding:
    prefix: -hist
- id: vals
  doc: 'input is a text file containing only the observed counts '
  type: boolean
  inputBinding:
    prefix: -vals
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
- c_curve
