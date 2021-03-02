class: CommandLineTool
id: clipping_profile.py.cwl
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
- id: in_mapq
  doc: "Minimum mapping quality (phred scaled) for an\nalignment to be considered\
    \ as \"uniquely mapped\".\ndefault=30"
  type: long?
  inputBinding:
    prefix: --mapq
- id: in_sequencing
  doc: "Sequencing layout. \"SE\"(single-end) or \"PE\"(pair-end).\n"
  type: string?
  inputBinding:
    prefix: --sequencing
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- clipping_profile.py
