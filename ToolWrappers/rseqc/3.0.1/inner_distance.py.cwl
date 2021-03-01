class: CommandLineTool
id: inner_distance.py.cwl
inputs:
- id: in_input_file
  doc: Alignment file in BAM or SAM format.
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_out_prefix
  doc: Prefix of output files(s)
  type: string?
  inputBinding:
    prefix: --out-prefix
- id: in_ref_gene
  doc: Reference gene model in BED format.
  type: string?
  inputBinding:
    prefix: --refgene
- id: in_sample_size
  doc: "Number of read-pairs used to estimate inner distance.\ndefault=1000000"
  type: long?
  inputBinding:
    prefix: --sample-size
- id: in_lower_bound
  doc: "Lower bound of inner distance (bp). This option is\nused for ploting histograme.\
    \ default=-250"
  type: long?
  inputBinding:
    prefix: --lower-bound
- id: in_upper_bound
  doc: "Upper bound of inner distance (bp). This option is\nused for plotting histogram.\
    \ default=250"
  type: long?
  inputBinding:
    prefix: --upper-bound
- id: in_step
  doc: "Step size (bp) of histograme. This option is used for\nplotting histogram.\
    \ default=5"
  type: long?
  inputBinding:
    prefix: --step
- id: in_mapq
  doc: "Minimum mapping quality (phred scaled) for an\nalignment to be called \"uniquely\
    \ mapped\". default=30\n"
  type: long?
  inputBinding:
    prefix: --mapq
- id: in_read_one
  doc: insert_size     read_2
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- inner_distance.py
