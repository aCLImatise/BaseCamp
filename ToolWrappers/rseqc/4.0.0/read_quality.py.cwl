class: CommandLineTool
id: read_quality.py.cwl
inputs:
- id: in_input_file
  doc: Alignment file in BAM or SAM format. [required]
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_out_prefix
  doc: Prefix of output files(s). [required]
  type: string?
  inputBinding:
    prefix: --out-prefix
- id: in_reduce
  doc: "To avoid making huge vector in R, nucleotide with\nparticular phred score\
    \ less frequent than this number\nwill be ignored. Increase this number save more\
    \ memory\nwhile reduce precision. Set to 1 achieves maximum\nprecision (i.e. every\
    \ nucleotide will be considered).\nThis option only applies to the 'boxplot'.\
    \ default=1"
  type: long?
  inputBinding:
    prefix: --reduce
- id: in_mapq
  doc: "Minimum mapping quality (phred scaled) for an\nalignment to be called \"uniquely\
    \ mapped\". default=30\n"
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
- read_quality.py
