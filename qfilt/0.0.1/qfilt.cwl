class: CommandLineTool
id: qfilt.cwl
inputs:
- id: f
  doc: QUAL            FASTA and QUAL files
  type: string
  inputBinding:
    prefix: -F
- id: q
  doc: FASTQ file
  type: string
  inputBinding:
    prefix: -Q
- id: o
  doc: direct retained fragments to a file named OUTPUT (default=stdout)
  type: string
  inputBinding:
    prefix: -o
- id: q
  doc: minimum per-base quality score below which a read will be split or truncated
    (default=20)
  type: string
  inputBinding:
    prefix: -q
- id: l
  doc: minimum retained fragment LENGTH (default=50)
  type: long
  inputBinding:
    prefix: -l
- id: m
  doc: 'MODE is a 3-bitmask (an integer in [0-7], default=0): if the lowest bit is
    set, it is like passing -s; if the middle bit is set, it is like passing -p; and
    if the highest bit is set, it is like passing -a'
  type: string
  inputBinding:
    prefix: -m
- id: s
  doc: when encountering a low q-score, split instead of truncate
  type: boolean
  inputBinding:
    prefix: -s
- id: p
  doc: tolerate low q-score homopolymeric regions
  type: boolean
  inputBinding:
    prefix: -p
- id: a
  doc: tolerate low q-score ambiguous nucleotides
  type: boolean
  inputBinding:
    prefix: -a
- id: p
  doc: rather than splitting or truncating, replace low quality bases with CHAR this
    option OVERRIDES all -m mode options
  type: string
  inputBinding:
    prefix: -P
- id: r
  doc: rather than splitting or truncating, remove reads which  contain more than
    COUNT low quality bases this option only works in COMBINATION with the -P (punch)
    option
  type: string
  inputBinding:
    prefix: -R
- id: t
  doc: if supplied, only reads with this PREFIX are retained, and the PREFIX is stripped
    from each contributing read
  type: string
  inputBinding:
    prefix: -T
- id: t
  doc: if PREFIX is supplied, prefix matching tolerates at most MISMATCH mismatches
    (default=0)
  type: string
  inputBinding:
    prefix: -t
- id: f
  doc: output in FASTA or FASTQ format (default=FASTA)
  type: string
  inputBinding:
    prefix: -f
- id: j
  doc: output run diagnostics to stderr as JSON (default is to write ASCII text)
  type: boolean
  inputBinding:
    prefix: -j
outputs: []
cwlVersion: v1.1
baseCommand:
- qfilt
