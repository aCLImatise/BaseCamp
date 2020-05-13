class: CommandLineTool
id: nxtrim.cwl
inputs:
- id: o
  doc: '[ --output-prefix ] arg      output prefix'
  type: boolean
  inputBinding:
    prefix: -O
- id: just_mp
  doc: just creates a the mp/unknown libraries (reads with adapter at the start will
    be completely N masked)
  type: boolean
  inputBinding:
    prefix: --justmp
- id: stdout
  doc: print trimmed reads to stdout (equivalent to justmp)
  type: boolean
  inputBinding:
    prefix: --stdout
- id: stdout_mp
  doc: print only known MP reads to stdout (good for scaffolding)
  type: boolean
  inputBinding:
    prefix: --stdout-mp
- id: stdout_un
  doc: print only unknown reads to stdout
  type: boolean
  inputBinding:
    prefix: --stdout-un
- id: rf
  doc: leave mate pair reads in RF orientation [by default are flipped into FR]
  type: boolean
  inputBinding:
    prefix: --rf
- id: preserve_mp
  doc: preserve MPs even when the corresponding PE has longer reads
  type: boolean
  inputBinding:
    prefix: --preserve-mp
- id: ignore_pf
  doc: ignore chastity/purity filters in read headers
  type: boolean
  inputBinding:
    prefix: --ignorePF
- id: separate
  doc: output paired reads in separate files (prefix_R1/prefix_r2). Default is interleaved.
  type: boolean
  inputBinding:
    prefix: --separate
- id: aggressive
  doc: more aggressive adapter search (see docs/adapter.md)
  type: boolean
  inputBinding:
    prefix: --aggressive
- id: similarity
  doc: (=0.85)    The minimum similarity between strings to be considered a match
    (Hamming distance divided by string length)
  type: string
  inputBinding:
    prefix: --similarity
- id: min_overlap
  doc: (=12)      The minimum overlap to be considered for matching
  type: string
  inputBinding:
    prefix: --minoverlap
- id: minlength
  doc: (=21)      The minimum read length to output (smaller reads will be filtered)
  type: string
  inputBinding:
    prefix: --minlength
outputs: []
cwlVersion: v1.1
baseCommand:
- nxtrim
