class: CommandLineTool
id: dart.cwl
inputs:
- id: t
  doc: number of threads [4]
  type: long
  inputBinding:
    prefix: -t
- id: f
  doc: 'files with #1 mates reads'
  type: boolean
  inputBinding:
    prefix: -f
- id: f2
  doc: 'files with #2 mates reads'
  type: boolean
  inputBinding:
    prefix: -f2
- id: o
  doc: alignment filename in SAM format
  type: boolean
  inputBinding:
    prefix: -o
- id: bo
  doc: alignment filename in BAM format
  type: boolean
  inputBinding:
    prefix: -bo
- id: j
  doc: splice junction output filename [junctions.tab]
  type: boolean
  inputBinding:
    prefix: -j
- id: m
  doc: output multiple alignments
  type: boolean
  inputBinding:
    prefix: -m
- id: p
  doc: paired-end reads are interlaced in the same file
  type: boolean
  inputBinding:
    prefix: -p
- id: unique
  doc: output unique alignments
  type: boolean
  inputBinding:
    prefix: -unique
- id: intron
  doc: the maximal intron size [500000]
  type: boolean
  inputBinding:
    prefix: -intron
- id: v
  doc: version
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- dart
