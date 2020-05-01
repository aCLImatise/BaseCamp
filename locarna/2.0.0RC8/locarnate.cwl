#!/usr/bin/env cwl-runner

baseCommand:
- locarnate
class: CommandLineTool
cwlVersion: v1.0
id: locarnate
inputs:
- doc: parameters for the pairwise alignment step
  id: pairwise_parameters
  inputBinding:
    prefix: --pairwise_parameters
  type: boolean
- doc: parameters for tcoffee
  id: t_coffee_params
  inputBinding:
    prefix: --tcoffee_params
  type: boolean
- doc: parameters for locarna_rnafold_pp
  id: pp_calculator_params
  inputBinding:
    prefix: --pp_calculator_params
  type: boolean
- doc: path to output folder
  id: output
  inputBinding:
    prefix: --output
  type: boolean
- doc: if given only a t-coffee library will be written without actual computation
  id: library_only
  inputBinding:
    prefix: --library-only
  type: boolean
- doc: 'the file name of the produced t-coffee library (default: "input.lib")'
  id: library_name
  inputBinding:
    prefix: --library-name
  type: boolean
- doc: a comma separated list of paths to t-coffee library files that should be given
    to t-coffee in addition to the one generated during this run
  id: additional_libraries
  inputBinding:
    prefix: --additional-libraries
  type: boolean
- doc: 'which pairwise aligner to use (default: locarna)'
  id: pairwise_aligner
  inputBinding:
    prefix: --pairwise_aligner
  type: boolean
- doc: each edge from each EPM gets the same weight (exparnap only!)
  id: scaling_factor
  inputBinding:
    prefix: --scaling_factor
  type: boolean
