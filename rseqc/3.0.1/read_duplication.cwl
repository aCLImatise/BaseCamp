class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/read_duplication.py.cwl
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
- id: up_limit
  doc: Upper limit of reads' occurrence. Only used for plotting, default=500 (times)
  type: string
  inputBinding:
    prefix: --up-limit
- id: mapq
  doc: Minimum mapping quality (phred scaled) for an alignment to be considered as
    "uniquely mapped". default=30
  type: string
  inputBinding:
    prefix: --mapq
outputs: []
cwlVersion: v1.1
baseCommand:
- read_duplication.py
