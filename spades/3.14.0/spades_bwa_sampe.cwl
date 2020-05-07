class: CommandLineTool
id: spades_bwa_sampe.cwl
inputs:
- id: bwa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sampe
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in1sai
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in2sai
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in1fq
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in2fq
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: a
  doc: maximum insert size [500]
  type: long
  inputBinding:
    prefix: -a
- id: o
  doc: maximum occurrences for one end [100000]
  type: long
  inputBinding:
    prefix: -o
- id: n
  doc: maximum hits to output for paired reads [3]
  type: long
  inputBinding:
    prefix: -n
- id: n
  doc: maximum hits to output for discordant pairs [10]
  type: long
  inputBinding:
    prefix: -N
- id: c
  doc: prior of chimeric rate (lower bound) [1.0e-05]
  type: double
  inputBinding:
    prefix: -c
- id: f
  doc: sam file to output results to [stdout]
  type: File
  inputBinding:
    prefix: -f
- id: r
  doc: read group header line such as `@RG\tID:foo\tSM:bar' [null]
  type: string
  inputBinding:
    prefix: -r
- id: p
  doc: preload index into memory (for base-space reads only)
  type: boolean
  inputBinding:
    prefix: -P
- id: s
  doc: disable Smith-Waterman for the unmapped mate
  type: boolean
  inputBinding:
    prefix: -s
- id: a
  doc: disable insert size estimate (force -s)
  type: boolean
  inputBinding:
    prefix: -A
outputs: []
cwlVersion: v1.1
baseCommand:
- spades-bwa
- sampe
