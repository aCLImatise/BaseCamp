class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/inner_distance.py.cwl
inputs:
- id: input_file
  doc: Alignment file in BAM or SAM format.
  type: string
  inputBinding:
    prefix: --input-file
- id: out_prefix
  doc: Prefix of output files(s)
  type: string
  inputBinding:
    prefix: --out-prefix
- id: ref_gene
  doc: Reference gene model in BED format.
  type: string
  inputBinding:
    prefix: --refgene
- id: sample_size
  doc: Number of read-pairs used to estimate inner distance. default=1000000
  type: string
  inputBinding:
    prefix: --sample-size
- id: lower_bound
  doc: Lower bound of inner distance (bp). This option is used for ploting histograme.
    default=-250
  type: string
  inputBinding:
    prefix: --lower-bound
- id: upper_bound
  doc: Upper bound of inner distance (bp). This option is used for plotting histogram.
    default=250
  type: string
  inputBinding:
    prefix: --upper-bound
- id: step
  doc: Step size (bp) of histograme. This option is used for plotting histogram. default=5
  type: string
  inputBinding:
    prefix: --step
- id: mapq
  doc: Minimum mapping quality (phred scaled) for an alignment to be called "uniquely
    mapped". default=30
  type: string
  inputBinding:
    prefix: --mapq
outputs: []
cwlVersion: v1.1
baseCommand:
- inner_distance.py
