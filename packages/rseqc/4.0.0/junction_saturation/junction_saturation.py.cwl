class: CommandLineTool
id: junction_saturation.py.cwl
inputs:
- id: in_input_file
  doc: Alignment file in BAM or SAM format.[required]
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_out_prefix
  doc: Prefix of output files(s). [required]
  type: string?
  inputBinding:
    prefix: --out-prefix
- id: in_ref_gene
  doc: "Reference gene model in bed fomat. This gene model is\nused to determine known\
    \ splicing junctions. [required]"
  type: string?
  inputBinding:
    prefix: --refgene
- id: in_percentile_floor
  doc: "Sampling starts from this percentile. A integer\nbetween 0 and 100. default=5"
  type: long?
  inputBinding:
    prefix: --percentile-floor
- id: in_percentile_ceiling
  doc: "Sampling ends at this percentile. A integer between 0\nand 100. default=100"
  type: long?
  inputBinding:
    prefix: --percentile-ceiling
- id: in_percentile_step
  doc: "Sampling frequency. Smaller value means more sampling\ntimes. A integer between\
    \ 0 and 100. default=5"
  type: long?
  inputBinding:
    prefix: --percentile-step
- id: in_min_intron
  doc: Minimum intron size (bp). default=50
  type: long?
  inputBinding:
    prefix: --min-intron
- id: in_min_coverage
  doc: "Minimum number of supportting reads to call a\njunction. default=1"
  type: long?
  inputBinding:
    prefix: --min-coverage
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
- junction_saturation.py
