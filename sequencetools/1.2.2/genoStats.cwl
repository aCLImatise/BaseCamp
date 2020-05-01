#!/usr/bin/env cwl-runner

baseCommand:
- genoStats
class: CommandLineTool
cwlVersion: v1.0
id: genostats
inputs:
- doc: a freqsum file to read as input. Use - to read from stdin
  id: freq_sum
  inputBinding:
    prefix: --freqsum
  type: string
- doc: Eigenstrat Geno File
  id: eigen_strat_geno
  inputBinding:
    prefix: --eigenstratGeno
  type: string
- doc: Eigenstrat Snp File
  id: eigen_strat_snp
  inputBinding:
    prefix: --eigenstratSnp
  type: string
- doc: Eigenstrat Ind File
  id: eigen_strat_ind
  inputBinding:
    prefix: --eigenstratInd
  type: string
