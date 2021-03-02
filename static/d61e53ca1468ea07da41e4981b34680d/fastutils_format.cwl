class: CommandLineTool
id: fastutils_format.cwl
inputs:
- id: in_in
  doc: input file in fasta/q format [stdin]
  type: File?
  inputBinding:
    prefix: --in
- id: in_out
  doc: output file [stdout]
  type: File?
  inputBinding:
    prefix: --out
- id: in_linewidth
  doc: size of lines in fasta output. Use 0 for no wrapping [0]
  type: long?
  inputBinding:
    prefix: --lineWidth
- id: in_min_len
  doc: min read length [0]
  type: long?
  inputBinding:
    prefix: --minLen
- id: in_maxlen
  doc: max read length [LLONG_MAX]
  type: long?
  inputBinding:
    prefix: --maxLen
- id: in_fast_q
  doc: output reads in fastq format if possible
  type: boolean?
  inputBinding:
    prefix: --fastq
- id: in_non
  doc: do not print entries with N's
  type: boolean?
  inputBinding:
    prefix: --noN
- id: in_comment
  doc: print comments in headers
  type: boolean?
  inputBinding:
    prefix: --comment
- id: in_digital
  doc: use read index instead as read name
  type: boolean?
  inputBinding:
    prefix: --digital
- id: in_keep
  doc: keep name as a comment when using -d
  type: boolean?
  inputBinding:
    prefix: --keep
- id: in_prefix
  doc: prepend STR to the name
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_suffix
  doc: append STR to the name
  type: string?
  inputBinding:
    prefix: --suffix
- id: in_pac_bio
  doc: use pacbio's header format
  type: boolean?
  inputBinding:
    prefix: --pacbio
- id: in_fof_n
  doc: input file is a file of file names
  type: boolean?
  inputBinding:
    prefix: --fofn
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: output file [stdout]
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- fastutils
- format
