class: CommandLineTool
id: ../../../read_NVC.py.cwl
inputs:
- id: input_file
  doc: Input file in BAM or SAM format.[required]
  type: string
  inputBinding:
    prefix: --input-file
- id: out_prefix
  doc: Prefix of output files(s). [required]
  type: string
  inputBinding:
    prefix: --out-prefix
- id: nx
  doc: Flag option. Presense of this flag tells program to include N,X in output NVC
    plot [required]
  type: boolean
  inputBinding:
    prefix: --nx
- id: mapq
  doc: Minimum mapping quality (phred scaled) for an alignment to be called "uniquely
    mapped". default=30
  type: string
  inputBinding:
    prefix: --mapq
outputs: []
cwlVersion: v1.1
baseCommand:
- read_NVC.py
