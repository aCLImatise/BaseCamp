class: CommandLineTool
id: fastutils_format.cwl
inputs:
- id: in
  doc: input file in fasta/q format [stdin]
  type: string
  inputBinding:
    prefix: --in
- id: out
  doc: output file [stdout]
  type: string
  inputBinding:
    prefix: --out
- id: linewidth
  doc: size of lines in fasta output. Use 0 for no wrapping [0]
  type: long
  inputBinding:
    prefix: --lineWidth
- id: min_len
  doc: min read length [0]
  type: long
  inputBinding:
    prefix: --minLen
- id: maxlen
  doc: max read length [LLONG_MAX]
  type: long
  inputBinding:
    prefix: --maxLen
- id: fast_q
  doc: output reads in fastq format if possible
  type: boolean
  inputBinding:
    prefix: --fastq
- id: non
  doc: do not print entries with N's
  type: boolean
  inputBinding:
    prefix: --noN
- id: comment
  doc: print comments in headers
  type: boolean
  inputBinding:
    prefix: --comment
- id: digital
  doc: use read index instead as read name
  type: boolean
  inputBinding:
    prefix: --digital
- id: keep
  doc: keep name as a comment when using -d
  type: boolean
  inputBinding:
    prefix: --keep
- id: prefix
  doc: prepend STR to the name
  type: string
  inputBinding:
    prefix: --prefix
- id: suffix
  doc: append STR to the name
  type: string
  inputBinding:
    prefix: --suffix
- id: pac_bio
  doc: use pacbio's header format
  type: boolean
  inputBinding:
    prefix: --pacbio
- id: fof_n
  doc: input file is a file of file names
  type: boolean
  inputBinding:
    prefix: --fofn
outputs: []
cwlVersion: v1.1
baseCommand:
- fastutils
- format
