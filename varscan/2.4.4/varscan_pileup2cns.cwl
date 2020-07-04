class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/varscan_pileup2cns.cwl
inputs:
- id: min_coverage
  doc: Minimum read depth at a position to make a call [8]
  type: boolean
  inputBinding:
    prefix: --min-coverage
- id: min_reads_two
  doc: Minimum supporting reads at a position to call variants [2]
  type: boolean
  inputBinding:
    prefix: --min-reads2
- id: min_avg_qual
  doc: Minimum base quality at a position to count a read [15]
  type: boolean
  inputBinding:
    prefix: --min-avg-qual
- id: min_var_freq
  doc: Minimum variant allele frequency threshold [0.01]
  type: boolean
  inputBinding:
    prefix: --min-var-freq
- id: min_freq_for_hom
  doc: Minimum frequency to call homozygote [0.75]
  type: boolean
  inputBinding:
    prefix: --min-freq-for-hom
- id: p_value
  doc: Default p-value threshold for calling variants [99e-02]
  type: boolean
  inputBinding:
    prefix: --p-value
- id: variants
  doc: Report only variant (SNP/indel) positions [0]
  type: boolean
  inputBinding:
    prefix: --variants
- id: jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pile_up_two_cns
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: pile_up
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- varscan
- pileup2cns
