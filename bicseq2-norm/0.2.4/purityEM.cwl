#!/usr/bin/env cwl-runner

baseCommand:
- purityEM
class: CommandLineTool
cwlVersion: v1.0
id: purityem
inputs:
- doc: ''
  id: input
  inputBinding:
    position: 0
  type: string
- doc: ': the output name; default <stdout>'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': print the best model for each ploidy number'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: ': maximum number of EM iterations; default 100'
  id: max_it
  inputBinding:
    prefix: --max_it
  type: long
- doc: ': the convergence criterion; default 1e-6'
  id: epsilon
  inputBinding:
    prefix: --epsilon
  type: double
- doc: ': specify a rough upper bound of the ploidy number. A smaller value (e.g.
    4) is suggested as a larger value will make the program quite slow'
  id: m_ploidy
  inputBinding:
    prefix: --mploidy
  type: boolean
- doc: ': specify the maximum number of component in the mixture of normal model;
    Default 15 this option will overload the option --mploidy; this is the default
    method'
  id: max_comp
  inputBinding:
    prefix: --maxComp
  type: boolean
- doc: ': the number of random starting values for the EM algorithm'
  id: nrs
  inputBinding:
    prefix: --nRS
  type: boolean
- doc: ': if specified, subsample 10000 observations (if there are more than 10000
    observations) for parameter estimation.'
  id: subsample
  inputBinding:
    prefix: --subsample
  type: boolean
