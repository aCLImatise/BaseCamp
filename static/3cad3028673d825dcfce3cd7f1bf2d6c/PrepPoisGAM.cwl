class: CommandLineTool
id: PrepPoisGAM.cwl
inputs:
- id: f_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: i
  doc: ': a two column read count file(position and count); If unspecified, use <stdin>
    as input; Data should be ordered by position'
  type: string
  inputBinding:
    prefix: -i
- id: s
  doc: ': fragment size as estimated from paired end data or by cross correlation
    of reads on postive and negative strands; Default 300'
  type: long
  inputBinding:
    prefix: -s
- id: l
  doc: ': read length; Default 50'
  type: long
  inputBinding:
    prefix: -l
- id: o
  doc: ': if specified, use this as output'
  type: string
  inputBinding:
    prefix: -o
- id: e
  doc: ': the file that stores the estimates of the glm model'
  type: string
  inputBinding:
    prefix: -e
- id: b
  doc: ': the bin size; default 100; only valid if -e is specified'
  type: long
  inputBinding:
    prefix: -b
- id: chrom
  doc: ': the chromosome under consideration'
  type: string
  inputBinding:
    prefix: --chrom
- id: uds
  doc: ': the number base pairs to extend to upstream and downstream. Default 5.'
  type: long
  inputBinding:
    prefix: --uds
- id: no_gap_in_read
  doc: ': when use every nucleotide in the extended read instead of just the nucleotides
    on two ends'
  type: boolean
  inputBinding:
    prefix: --noGapInRead
- id: gc_bin
  doc: ': bin the data and report gc and read count in the bins; Notice that if the
    option -e is specified, this option will be ignored'
  type: boolean
  inputBinding:
    prefix: --gc_bin
- id: map_bin
  doc: ': if specified, bin the data as bins with equal number of uniquely mappable
    genomic locations only valid if --gc_bin is specified and this option assume the
    input file has all unique mappable positions of the chromosome under consideration'
  type: boolean
  inputBinding:
    prefix: --map_bin
- id: none_gb_inom
  doc: ': Do not use negative binomial to estimate the variance; If this is not specified,
    the last row of -e <string> will be used as estimate of theta parameter in the
    Negative Binomial model'
  type: boolean
  inputBinding:
    prefix: --NoNegBinom
- id: noheader
  doc: ': Do not print header to the output'
  type: boolean
  inputBinding:
    prefix: --NoHeader
- id: refine
  doc: ': the file that stores the parameters in the refine step'
  type: string
  inputBinding:
    prefix: --refine
outputs: []
cwlVersion: v1.1
baseCommand:
- PrepPoisGAM
