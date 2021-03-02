class: CommandLineTool
id: deletion_profile.py.cwl
inputs:
- id: in_input
  doc: Input BAM file. [required]
  type: File?
  inputBinding:
    prefix: --input
- id: in_read_align_length
  doc: "Alignment length of read. It is usually set to the\norignial read length.\
    \ For example, all these cigar\nstrings (\"101M\", \"68M140N33M\", \"53M1D48M\"\
    ) suggest the\nread alignment length is 101. [required]"
  type: long?
  inputBinding:
    prefix: --read-align-length
- id: in_out_prefix
  doc: Prefix of output files(s). [required]
  type: string?
  inputBinding:
    prefix: --out-prefix
- id: in_read_num
  doc: "Number of aligned reads with deletions used to\ncalculate the deletion profile.\
    \ default=1000000"
  type: long?
  inputBinding:
    prefix: --read-num
- id: in_mapq
  doc: "Minimum mapping quality. default=30\n"
  type: long?
  inputBinding:
    prefix: --mapq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0
cwlVersion: v1.1
baseCommand:
- deletion_profile.py
