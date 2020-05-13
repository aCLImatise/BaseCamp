class: CommandLineTool
id: seqhax_pairs.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: file_2
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: p
  doc: Interleaved pairs-only output
  type: File
  inputBinding:
    prefix: -p
- id: u
  doc: Unpaired read output
  type: File
  inputBinding:
    prefix: -u
- id: s
  doc: '"Strict interleaved" output, all reads'
  type: File
  inputBinding:
    prefix: -s
- id: b
  doc: '"Broken paired" output, all reads'
  type: File
  inputBinding:
    prefix: -b
- id: y
  doc: Output statistics to FILE.
  type: File
  inputBinding:
    prefix: -y
- id: u
  doc: '>(gzip > unapired.fq.gz) reads.fq.gz'
  type: boolean
  inputBinding:
    prefix: -u
outputs: []
cwlVersion: v1.1
baseCommand:
- seqhax
- pairs
