class: CommandLineTool
id: samtools_mpileup.cwl
inputs:
- id: f
  doc: reference sequence file [null]
  type: File
  inputBinding:
    prefix: -f
- id: r
  doc: region in which pileup is generated [null]
  type: string
  inputBinding:
    prefix: -r
- id: l
  doc: 'list of positions (format: chr pos) [null]'
  type: File
  inputBinding:
    prefix: -l
- id: m
  doc: cap mapping quality at INT [60]
  type: long
  inputBinding:
    prefix: -M
- id: q
  doc: min base quality [13]
  type: long
  inputBinding:
    prefix: -Q
- id: q
  doc: filter out alignment with MQ smaller than INT [0]
  type: long
  inputBinding:
    prefix: -q
- id: g
  doc: generate BCF output
  type: boolean
  inputBinding:
    prefix: -g
- id: u
  doc: do not compress BCF output
  type: boolean
  inputBinding:
    prefix: -u
- id: b
  doc: disable BAQ computation
  type: boolean
  inputBinding:
    prefix: -B
outputs: []
cwlVersion: v1.1
baseCommand:
- samtools
- mpileup
