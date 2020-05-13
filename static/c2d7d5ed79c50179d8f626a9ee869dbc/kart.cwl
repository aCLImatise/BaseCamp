class: CommandLineTool
id: kart.cwl
inputs:
- id: t
  doc: number of threads [4]
  type: long
  inputBinding:
    prefix: -t
- id: f
  doc: 'files with #1 mates reads (format:fa, fq, fq.gz)'
  type: boolean
  inputBinding:
    prefix: -f
- id: f2
  doc: 'files with #2 mates reads (format:fa, fq, fq.gz)'
  type: boolean
  inputBinding:
    prefix: -f2
- id: o
  doc: alignment filename in SAM format [output.sam]
  type: boolean
  inputBinding:
    prefix: -o
- id: bo
  doc: alignment filename in BAM format
  type: boolean
  inputBinding:
    prefix: -bo
- id: m
  doc: output multiple alignments
  type: boolean
  inputBinding:
    prefix: -m
- id: g
  doc: max gaps (indels) [5]
  type: long
  inputBinding:
    prefix: -g
- id: p
  doc: paired-end reads are interlaced in the same file
  type: boolean
  inputBinding:
    prefix: -p
- id: pac_bio
  doc: pacbio data
  type: boolean
  inputBinding:
    prefix: -pacbio
- id: v
  doc: version
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- kart
