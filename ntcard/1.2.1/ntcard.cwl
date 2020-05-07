class: CommandLineTool
id: ntcard.cwl
inputs:
- id: threads
  doc: use N parallel threads [1] (N>=2 should be used when input files are >=2)
  type: string
  inputBinding:
    prefix: --threads
- id: km_er
  doc: 'the length of kmer '
  type: string
  inputBinding:
    prefix: --kmer
- id: gap
  doc: the length of gap in the gap seed [0]. g mod 2 must equal k mod 2 unless g
    == 0 -g does not support multiple k currently.
  type: string
  inputBinding:
    prefix: --gap
- id: cov
  doc: the maximum coverage of kmer in output [1000]
  type: string
  inputBinding:
    prefix: --cov
- id: pref
  doc: the prefix for output file name(s)
  type: string
  inputBinding:
    prefix: --pref
- id: output
  doc: the name for output file name (used when output should be a single file)
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- ntcard
