#!/usr/bin/env cwl-runner

baseCommand:
- PrepPois
class: CommandLineTool
cwlVersion: v1.0
id: preppois
inputs:
- doc: ''
  id: f_a_file
  inputBinding:
    position: 0
  type: string
- doc: ': a two column read count file(position and count); If unspecified, use <stdin>
    as input; Data should be ordered by position'
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: ': the file that contain the gap information of the chromosome (two column,
    start and end of the gaps)'
  id: g
  inputBinding:
    prefix: -g
  type: string
- doc: ': fragment size as estimated from paired end data or by cross correlation
    of reads on postive and negative strands; Default 300'
  id: s
  inputBinding:
    prefix: -s
  type: long
- doc: ': read length; Default 50'
  id: l
  inputBinding:
    prefix: -l
  type: long
- doc: ': if specified, use this as output'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': the file that stores the estimates of the glm model'
  id: e
  inputBinding:
    prefix: -e
  type: string
- doc: ': the bin size; default 100; only valid if -e is specified'
  id: b
  inputBinding:
    prefix: -b
  type: long
- doc: ': the highest degree of polynomials of GC used in the normalization procedure;
    Default 2.'
  id: p
  inputBinding:
    prefix: -p
  type: long
- doc: ': the chromosome under consideration'
  id: chrom
  inputBinding:
    prefix: --chrom
  type: string
- doc: ': the number base pairs to extend to upstream and downstream. Default 5.'
  id: uds
  inputBinding:
    prefix: --uds
  type: long
- doc: ': when use every nucleotide in the extended read instead of just the nucleotides
    on two ends'
  id: no_gap_in_read
  inputBinding:
    prefix: --noGapInRead
  type: boolean
- doc: ': bin the data and report gc and read count in the bins; Notice that if the
    option -e is specified, this option will be ignored'
  id: gc_bin
  inputBinding:
    prefix: --gc_bin
  type: boolean
- doc: ': if specified, bin the data as bins with equal number of uniquely mappable
    genomic locations only valid if --gc_bin is specified and this option assume the
    input file has all unique mappable positions of the chromosome under consideration'
  id: map_bin
  inputBinding:
    prefix: --map_bin
  type: boolean
- doc: ': use log of gc as predictor'
  id: gc_log
  inputBinding:
    prefix: --gc_log
  type: boolean
- doc: ': use gc*(polynomials of gc^gc_mp) as predictors instead of polynomials of
    gc'
  id: gc_mp
  inputBinding:
    prefix: --gc_mp
  type: double
- doc: ': Do not use negative binomial to estimate the variance; If this is not specified,
    the last row of -e <string> will be used as estimate of theta parameter in the
    Negative Binomial model'
  id: none_gb_inom
  inputBinding:
    prefix: --NoNegBinom
  type: boolean
- doc: ': Do not print header to the output'
  id: noheader
  inputBinding:
    prefix: --NoHeader
  type: boolean
- doc: <degree,coefficients separated by comma>
  id: refine
  inputBinding:
    prefix: --refine
  type: boolean
