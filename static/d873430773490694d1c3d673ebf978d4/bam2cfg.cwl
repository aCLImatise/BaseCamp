class: CommandLineTool
id: bam2cfg.pl.cwl
inputs:
- id: bam_files
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: q
  doc: Minimum mapping quality [35]
  type: long
  inputBinding:
    prefix: -q
- id: m
  doc: Using mapping quality instead of alternative mapping quality
  type: boolean
  inputBinding:
    prefix: -m
- id: s
  doc: Minimal mean insert size [50]
  type: boolean
  inputBinding:
    prefix: -s
- id: c
  doc: Change default system from Illumina to SOLiD
  type: boolean
  inputBinding:
    prefix: -C
- id: c
  doc: Cutoff in unit of standard deviation [4]
  type: double
  inputBinding:
    prefix: -c
- id: n
  doc: Number of observation required to estimate mean and s.d. insert size [10000]
  type: long
  inputBinding:
    prefix: -n
- id: v
  doc: Cutoff on coefficients of variation [1]
  type: double
  inputBinding:
    prefix: -v
- id: f
  doc: A two column tab-delimited text file (RG, LIB) specify the RG=>LIB mapping,
    useful when BAM header is incomplete
  type: string
  inputBinding:
    prefix: -f
- id: b
  doc: 'Number of bins in the histogram [50] '
  type: long
  inputBinding:
    prefix: -b
- id: g
  doc: Output mapping flag distribution
  type: boolean
  inputBinding:
    prefix: -g
outputs: []
cwlVersion: v1.1
baseCommand:
- bam2cfg.pl
