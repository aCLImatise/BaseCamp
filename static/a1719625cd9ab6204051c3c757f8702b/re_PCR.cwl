class: CommandLineTool
id: re_PCR.cwl
inputs:
- id: p
  doc: Perform primer lookup using hash-file
  type: string
  inputBinding:
    prefix: -p
- id: p
  doc: Perform primer lookup using hash-file
  type: string
  inputBinding:
    prefix: -P
- id: s
  doc: Perform STS lookup using hash-file
  type: string
  inputBinding:
    prefix: -s
- id: s
  doc: Perform STS lookup using hash-file
  type: string
  inputBinding:
    prefix: -S
- id: n
  doc: Set max allowed mismatches per primer for lookup
  type: string
  inputBinding:
    prefix: -n
- id: g
  doc: Set max allowed indels per primer for lookup
  type: string
  inputBinding:
    prefix: -g
- id: m
  doc: Set variability for STS size for lookup
  type: string
  inputBinding:
    prefix: -m
- id: l
  doc: Use presize alignments (only if gaps>0)
  type: boolean
  inputBinding:
    prefix: -l
- id: g
  doc: Print alignments in comments
  type: boolean
  inputBinding:
    prefix: -G
- id: d
  doc: Set default STS size
  type: long
  inputBinding:
    prefix: -d
- id: r
  doc: +|-          Enable/disable reverse STS lookup
  type: boolean
  inputBinding:
    prefix: -r
- id: o
  doc: +|-          Enable/disable syscall optimisation
  type: boolean
  inputBinding:
    prefix: -O
- id: c
  doc: Set number of STSes per batch
  type: string
  inputBinding:
    prefix: -C
- id: o
  doc: Set output file name
  type: string
  inputBinding:
    prefix: -o
- id: q
  doc: Quiet (no progress indicator)
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- re-PCR
