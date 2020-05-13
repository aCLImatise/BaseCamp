class: CommandLineTool
id: pfscan.cwl
inputs:
- id: a
  doc: ': report optimal alignment for all profiles.'
  type: boolean
  inputBinding:
    prefix: -a
- id: b
  doc: ': search complementary strand of DNA sequences.'
  type: boolean
  inputBinding:
    prefix: -b
- id: f
  doc: ': input sequence file is in FASTA format.'
  type: boolean
  inputBinding:
    prefix: -f
- id: l
  doc: ': indicate highest cut-off level (number).'
  type: boolean
  inputBinding:
    prefix: -l
- id: l
  doc: ': indicate highest cut-off level (text).'
  type: boolean
  inputBinding:
    prefix: -L
- id: m
  doc: ': report individual matches for circular profiles.'
  type: boolean
  inputBinding:
    prefix: -m
- id: r
  doc: ': use raw score.'
  type: boolean
  inputBinding:
    prefix: -r
- id: u
  doc: ': force profile disjointness to UNIQUE.'
  type: boolean
  inputBinding:
    prefix: -u
- id: c
  doc: '<value>: cut-off level to be used for match selection. Same as parameter L.'
  type: boolean
  inputBinding:
    prefix: -C
- id: m
  doc: '<value>: set the normalization mode to use for the score computation. Overrides
    the profile PRIORITY parameter.'
  type: boolean
  inputBinding:
    prefix: -M
- id: d
  doc: ': impose length limit on profile description.'
  type: boolean
  inputBinding:
    prefix: -d
- id: k
  doc: ': output using the xPSA header (using keyword=value pairs).'
  type: boolean
  inputBinding:
    prefix: -k
- id: s
  doc: ': list sequences of the matched regions.'
  type: boolean
  inputBinding:
    prefix: -s
- id: v
  doc: ': suppress warnings on stderr.'
  type: boolean
  inputBinding:
    prefix: -v
- id: x
  doc: ': list alignments in PSA format.'
  type: boolean
  inputBinding:
    prefix: -x
- id: y
  doc: ': list alignments in human readable form.'
  type: boolean
  inputBinding:
    prefix: -y
- id: z
  doc: ': indicate profile start and stop positions.'
  type: boolean
  inputBinding:
    prefix: -z
- id: w
  doc: '<value>: specifies the output width. Same as parameter W.'
  type: boolean
  inputBinding:
    prefix: -W
outputs: []
cwlVersion: v1.1
baseCommand:
- pfscan
