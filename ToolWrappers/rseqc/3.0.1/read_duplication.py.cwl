class: CommandLineTool
id: read_duplication.py.cwl
inputs:
- id: in_input_file
  doc: Alignment file in BAM or SAM format.
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_out_prefix
  doc: Prefix of output files(s).
  type: string?
  inputBinding:
    prefix: --out-prefix
- id: in_up_limit
  doc: "Upper limit of reads' occurrence. Only used for\nplotting, default=500 (times)"
  type: long?
  inputBinding:
    prefix: --up-limit
- id: in_mapq
  doc: "Minimum mapping quality (phred scaled) for an\nalignment to be considered\
    \ as \"uniquely mapped\".\ndefault=30\n"
  type: long?
  inputBinding:
    prefix: --mapq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- read_duplication.py
