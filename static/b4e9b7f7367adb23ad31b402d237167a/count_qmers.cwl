class: CommandLineTool
id: count_qmers.cwl
inputs:
- id: f
  doc: fastq file to count
  type: string
  inputBinding:
    prefix: -f
- id: k
  doc: 'Length of kmer '
  type: string
  inputBinding:
    prefix: -k
- id: m
  doc: 'Minimum count to report (default: >0)'
  type: long
  inputBinding:
    prefix: -m
- id: l
  doc: Gigabyte limit on RAM. If limited, the output will contain redundancies
  type: string
  inputBinding:
    prefix: -l
- id: q
  doc: Quality value ascii scale, generally 64 or 33.  If not specified, it will guess.
  type: string
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- count-qmers
