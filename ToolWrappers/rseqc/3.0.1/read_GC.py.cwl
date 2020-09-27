class: CommandLineTool
id: read_GC.py.cwl
inputs:
- id: in_input_file
  doc: Alignment file in BAM or SAM format.
  type: File
  inputBinding:
    prefix: --input-file
- id: in_out_prefix
  doc: Prefix of output files(s).
  type: string
  inputBinding:
    prefix: --out-prefix
- id: in_mapq
  doc: "Minimum mapping quality (phred scaled) for an\nalignment to be called \"uniquely\
    \ mapped\". default=30\n"
  type: long
  inputBinding:
    prefix: --mapq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- read_GC.py
