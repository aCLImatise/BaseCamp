#!/usr/bin/env cwl-runner

baseCommand:
- bowtie-build
class: CommandLineTool
cwlVersion: v1.0
id: bowtie-build
inputs:
- doc: comma-separated list of files with ref sequences
  id: reference_in
  inputBinding:
    position: 0
  type: string
- doc: write Ebwt data to files with this dir/basename
  id: e_bwt_outfile_base
  inputBinding:
    position: 1
  type: string
- doc: '/--offrate <int>      SA is sampled every 2^offRate BWT chars (default: 5)'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '/--ftabchars <int>    # of chars consumed in initial lookup (default: 10)'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: convert Ns in reference to As
  id: n_to_a
  inputBinding:
    prefix: --ntoa
  type: boolean
- doc: seed for random number generator
  id: seed
  inputBinding:
    prefix: --seed
  type: long
- doc: /--quiet              verbose output (for debugging)
  id: q
  inputBinding:
    prefix: -q
  type: boolean
