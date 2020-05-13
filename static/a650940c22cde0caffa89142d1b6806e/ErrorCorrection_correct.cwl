class: CommandLineTool
id: ErrorCorrection_correct.cwl
inputs:
- id: k
  doc: 'Consecutive Kmer Size, Default: 17'
  type: long
  inputBinding:
    prefix: -k
- id: k
  doc: 'Space Kmer Solid Part Size, Default: 16'
  type: long
  inputBinding:
    prefix: -K
- id: s
  doc: 'Space Kmer Space Part Size, Default: 9'
  type: long
  inputBinding:
    prefix: -S
- id: l
  doc: 'Consecutive Kmer Frequency lower limit, Default: 10'
  type: long
  inputBinding:
    prefix: -l
- id: e
  doc: 'Consecutive Kmer Frequency upper limit, Default: 255'
  type: long
  inputBinding:
    prefix: -e
- id: l
  doc: 'Space Kmer Frequency lower limit, Default: 10'
  type: long
  inputBinding:
    prefix: -L
- id: e
  doc: 'Space Kmer Frequency upper limit, Default: 255'
  type: long
  inputBinding:
    prefix: -E
- id: m
  doc: 'Minimum consecutive high frequency kmers per high-freq block, Default: 10'
  type: long
  inputBinding:
    prefix: -m
- id: c
  doc: 'Maximum base alternation per read, Default: 2'
  type: long
  inputBinding:
    prefix: -c
- id: t
  doc: 'Maximum trimmed bases allowed on each side, Default: 0'
  type: long
  inputBinding:
    prefix: -t
- id: r
  doc: 'Minimum read length after correction, Default: 50'
  type: long
  inputBinding:
    prefix: -r
- id: i
  doc: 'Minimum base interval between two correction, Default: 0'
  type: long
  inputBinding:
    prefix: -I
- id: x
  doc: 'Delete correction failed reads, Default: false'
  type: boolean
  inputBinding:
    prefix: -x
- id: j
  doc: 'Connect reads after correction, use 2 times to output quality, Default: false'
  type: boolean
  inputBinding:
    prefix: -j
- id: y
  doc: 'Correct reads end by overlapping information, Default: false'
  type: boolean
  inputBinding:
    prefix: -y
- id: v
  doc: 'Increase Verbosity, 3 times max, Default: 1'
  type: boolean
  inputBinding:
    prefix: -v
- id: f
  doc: 'Append additional information to read ID (EXPERIMENTAL), Default: false'
  type: boolean
  inputBinding:
    prefix: -F
- id: q
  doc: '<int>    Quality ASCII base (Default: 33)'
  type: boolean
  inputBinding:
    prefix: -q
- id: q
  doc: '<int>    Quality start range offset (Default: 2)'
  type: boolean
  inputBinding:
    prefix: -Q
- id: a
  doc: 'Minimal align length allowed, Default: 8'
  type: long
  inputBinding:
    prefix: -a
- id: a
  doc: 'Maximal align length allowed, Default: 70'
  type: long
  inputBinding:
    prefix: -A
- id: i
  doc: 'Mean align length induced alignment, Default: 0'
  type: long
  inputBinding:
    prefix: -i
- id: u
  doc: 'Identity cutoff of aligned region, Default: 0.9'
  type: double
  inputBinding:
    prefix: -u
- id: d
  doc: 'Maximum simularity between best and second best result, Default: 0.7'
  type: double
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- ErrorCorrection
- correct
