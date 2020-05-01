#!/usr/bin/env cwl-runner

baseCommand:
- RNA2Dfold
class: CommandLineTool
cwlVersion: v1.0
id: rna2dfold
inputs:
- doc: --noconv                Do not automatically substitude nucleotide "T" with
    "U" (default=off)
  id: program
  inputBinding:
    position: 0
  type: string
- doc: Print help, including all details and hidden options, and exit
  id: detailed_help
  inputBinding:
    prefix: --detailed-help
  type: boolean
- doc: Set the number of threads used for calculations (only available when compiled
    with OpenMP support)
  id: num_threads
  inputBinding:
    prefix: --numThreads
  type: long
- doc: calculate partition function and thus, Boltzmann probabilities and Gibbs free
    energy (default=off)
  id: part_func
  inputBinding:
    prefix: --partfunc
  type: boolean
- doc: backtrack a certain number of Boltzmann samples from the appropriate k,l neighborhood(s)
  id: stoch_bt
  inputBinding:
    prefix: --stochBT
  type: long
- doc: :<l>  backtrack structures from certain k,l-neighborhood only, can be specified
    multiple times (<k>:<l>,<m>:<n>,...)
  id: neighborhood
  inputBinding:
    prefix: --neighborhood
  type: string
- doc: scaling factor for pf to avoid overflows
  id: pf_scale
  inputBinding:
    prefix: --pfScale
  type: string
- doc: do not backtrack structures, calculate energy contributions only (default=off)
  id: no_bt
  inputBinding:
    prefix: --noBT
  type: boolean
- doc: Assume a circular (instead of linear) RNA molecule. (default=off)
  id: circ
  inputBinding:
    prefix: --circ
  type: boolean
- doc: Read energy parameters from paramfile, instead of using the default parameter
    set.
  id: param_file
  inputBinding:
    prefix: --paramFile
  type: string
- doc: How to treat "dangling end" energies for bases adjacent to helices in free
    ends and multi-loops (possible values="0", "2" default=`2')
  id: dangles
  inputBinding:
    prefix: --dangles
  type: long
- doc: Do not allow GU pairs (default=off)
  id: no_gu
  inputBinding:
    prefix: --noGU
  type: boolean
- doc: Do not allow GU pairs at the end of helices (default=off)
  id: no_closing_gu
  inputBinding:
    prefix: --noClosingGU
  type: boolean
