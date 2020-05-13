class: CommandLineTool
id: mateclever.cwl
inputs:
- id: t
  doc: Threads.
  type: string
  inputBinding:
    prefix: -T
- id: m
  doc: 'Maximum deletion length to look for (default: 10000).'
  type: long
  inputBinding:
    prefix: -M
- id: f
  doc: Delete old result and working directory first (if present).
  type: boolean
  inputBinding:
    prefix: -f
- id: w
  doc: 'Working directory (default: <result-directory>/work).'
  type: string
  inputBinding:
    prefix: -w
- id: k
  doc: 'Keep working directory (default: delete directory when finished).'
  type: boolean
  inputBinding:
    prefix: -k
- id: w
  doc: 'Minimum expected support for a SNP in order to ignore mismatches at that position
    (default: 3.0).'
  type: string
  inputBinding:
    prefix: -W
- id: o
  doc: 'Maximum center distance between split-read and read- pair deletion to be considered
    identical (default: 100).'
  type: long
  inputBinding:
    prefix: -o
- id: z
  doc: 'Maximum length difference between split-read and read- pair deletion to be
    considered identical (default: 20).'
  type: long
  inputBinding:
    prefix: -z
outputs: []
cwlVersion: v1.1
baseCommand:
- mateclever
