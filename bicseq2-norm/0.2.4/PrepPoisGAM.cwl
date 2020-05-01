#!/usr/bin/env cwl-runner

baseCommand:
- PrepPoisGAM
class: CommandLineTool
cwlVersion: v1.0
id: preppoisgam
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
- doc: ': the file that stores the parameters in the refine step'
  id: refine
  inputBinding:
    prefix: --refine
  type: string
