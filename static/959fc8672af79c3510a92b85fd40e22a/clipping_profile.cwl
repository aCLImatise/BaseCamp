class: CommandLineTool
id: ../../../clipping_profile.py.cwl
inputs:
- id: input_file
  doc: Alignment file in BAM or SAM format.
  type: string
  inputBinding:
    prefix: --input-file
- id: out_prefix
  doc: Prefix of output files(s).
  type: string
  inputBinding:
    prefix: --out-prefix
- id: mapq
  doc: Minimum mapping quality (phred scaled) for an alignment to be considered as
    "uniquely mapped". default=30
  type: string
  inputBinding:
    prefix: --mapq
- id: sequencing
  doc: Sequencing layout. "SE"(single-end) or "PE"(pair-end).
  type: string
  inputBinding:
    prefix: --sequencing
outputs: []
cwlVersion: v1.1
baseCommand:
- clipping_profile.py
