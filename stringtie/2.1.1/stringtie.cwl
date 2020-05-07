class: CommandLineTool
id: stringtie.cwl
inputs:
- id: e
  doc: estimate the abundance of given reference transcripts (requires -G)
  type: string
  inputBinding:
    prefix: -e
- id: x
  doc: not assemble any transcripts on the given reference sequence(s)
  type: string
  inputBinding:
    prefix: -x
- id: u
  doc: 'multi-mapping correction (default: correction enabled)'
  type: string
  inputBinding:
    prefix: -u
- id: h
  doc: this usage message and exit
  type: string
  inputBinding:
    prefix: -h
- id: g
  doc: reference annotation to include in the merging (GTF/GFF3)
  type: string
  inputBinding:
    prefix: -G
- id: o
  doc: 'output file name for the merged transcripts GTF (default: stdout)'
  type: string
  inputBinding:
    prefix: -o
- id: m
  doc: 'minimum input transcript length to include in the merge (default: 50)'
  type: long
  inputBinding:
    prefix: -m
- id: c
  doc: 'minimum input transcript coverage to include in the merge (default: 0)'
  type: long
  inputBinding:
    prefix: -c
- id: f
  doc: 'minimum input transcript FPKM to include in the merge (default: 1.0)'
  type: long
  inputBinding:
    prefix: -F
- id: t
  doc: 'minimum input transcript TPM to include in the merge (default: 1.0)'
  type: long
  inputBinding:
    prefix: -T
- id: f
  doc: 'minimum isoform fraction (default: 0.01)'
  type: long
  inputBinding:
    prefix: -f
- id: g
  doc: 'gap between transcripts to merge together (default: 250)'
  type: string
  inputBinding:
    prefix: -g
- id: i
  doc: keep merged transcripts with retained introns; by default these are not kept
    unless there is strong evidence for them
  type: boolean
  inputBinding:
    prefix: -i
- id: l
  doc: 'name prefix for output transcripts (default: MSTRG)'
  type: string
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- stringtie
