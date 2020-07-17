class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/junction_saturation.py.cwl
inputs:
- id: input_file
  doc: Alignment file in BAM or SAM format.[required]
  type: string
  inputBinding:
    prefix: --input-file
- id: out_prefix
  doc: Prefix of output files(s). [required]
  type: string
  inputBinding:
    prefix: --out-prefix
- id: ref_gene
  doc: Reference gene model in bed fomat. This gene model is used to determine known
    splicing junctions. [required]
  type: string
  inputBinding:
    prefix: --refgene
- id: percentile_floor
  doc: Sampling starts from this percentile. A integer between 0 and 100. default=5
  type: string
  inputBinding:
    prefix: --percentile-floor
- id: percentile_ceiling
  doc: Sampling ends at this percentile. A integer between 0 and 100. default=100
  type: string
  inputBinding:
    prefix: --percentile-ceiling
- id: percentile_step
  doc: Sampling frequency. Smaller value means more sampling times. A integer between
    0 and 100. default=5
  type: string
  inputBinding:
    prefix: --percentile-step
- id: min_intron
  doc: Minimum intron size (bp). default=50
  type: long
  inputBinding:
    prefix: --min-intron
- id: min_coverage
  doc: Minimum number of supportting reads to call a junction. default=1
  type: long
  inputBinding:
    prefix: --min-coverage
- id: mapq
  doc: Minimum mapping quality (phred scaled) for an alignment to be called "uniquely
    mapped". default=30
  type: string
  inputBinding:
    prefix: --mapq
outputs: []
cwlVersion: v1.1
baseCommand:
- junction_saturation.py
