class: CommandLineTool
id: htop.cwl
inputs:
- id: f
  doc: ': emulate HMM fragment search (HMMER1 specific).'
  type: boolean
  inputBinding:
    prefix: -f
- id: i
  doc: ': force insert extension scores to zero.'
  type: boolean
  inputBinding:
    prefix: -i
- id: l
  doc: ': do not impose limit on line length.'
  type: boolean
  inputBinding:
    prefix: -l
- id: o
  doc: ': assume input to be HMMER1 format (default: HMMER2).'
  type: boolean
  inputBinding:
    prefix: -o
- id: s
  doc: ': implement semiglobal alignment.'
  type: boolean
  inputBinding:
    prefix: -s
- id: b
  doc: '<value>:     (HMMER1 specific) normalization logarithmic base (default: 2.0).'
  type: boolean
  inputBinding:
    prefix: -B
- id: c
  doc: '<value>: level zero cut-off value (default: 8.5).'
  type: boolean
  inputBinding:
    prefix: -C
- id: f
  doc: '<value>:     (HMMER2 specific) output score multiplier (default: 100).'
  type: boolean
  inputBinding:
    prefix: -F
- id: h
  doc: '<value>:     (only effective with option -s) initiation/termination score
    (default: *).'
  type: boolean
  inputBinding:
    prefix: -H
- id: l
  doc: '<value>:     (HMMER1 specific) score logarithmic base (default: 1.0233739).'
  type: boolean
  inputBinding:
    prefix: -L
- id: m
  doc: '<value>: number of unprotected residues at end of profile (default: 5).'
  type: boolean
  inputBinding:
    prefix: -M
- id: p
  doc: '<value>: percent profile length not included in protected area (default: 0).'
  type: boolean
  inputBinding:
    prefix: -P
- id: q
  doc: '<value>: odds ratio of unknown residues (default: 0.8).'
  type: boolean
  inputBinding:
    prefix: -Q
outputs: []
cwlVersion: v1.1
baseCommand:
- htop
