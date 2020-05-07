class: CommandLineTool
id: hash_overlap.cwl
inputs:
- id: hash_overlap
  doc: <input-name>
  type: string
  inputBinding:
    position: 0
- id: a
  doc: Output AMOS-format messages instead of default
  type: boolean
  inputBinding:
    prefix: -A
- id: b
  doc: Output to AMOS bank instead of default
  type: boolean
  inputBinding:
    prefix: -B
- id: b
  doc: Use <n> as lowest read index (0 based inclusive)
  type: string
  inputBinding:
    prefix: -b
- id: e
  doc: Use <n> as highest read index (0 based exclusive)
  type: string
  inputBinding:
    prefix: -e
- id: f
  doc: Input is from multi-fasta file <input-name>
  type: boolean
  inputBinding:
    prefix: -F
- id: o
  doc: Set minimum overlap length to <n>
  type: string
  inputBinding:
    prefix: -o
- id: v
  doc: Set verbose level to <n>. Higher produces more output.
  type: string
  inputBinding:
    prefix: -v
- id: x
  doc: Set maximum error rate to <d>.  E.g., 0.06 is 6% error
  type: string
  inputBinding:
    prefix: -x
- id: s
  doc: 'Be strand-specific: find matches only in the forward  orientation of the reads
    instead of in their forward and reverse orientations. Useful for transcripts and
    other directional sequence datasets.'
  type: boolean
  inputBinding:
    prefix: -s
- id: i
  doc: Build overlaps only for reads whose IIDs are in <file>
  type: File
  inputBinding:
    prefix: -I
- id: e
  doc: Build overlaps only for reads whose EIDs are in <file>
  type: File
  inputBinding:
    prefix: -E
outputs: []
cwlVersion: v1.1
baseCommand:
- hash-overlap
