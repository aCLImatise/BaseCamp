#!/usr/bin/env cwl-runner

baseCommand:
- RNAparconv
class: CommandLineTool
cwlVersion: v1.0
id: rnaparconv
inputs:
- doc: ''
  id: input_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: output_file
  inputBinding:
    position: 1
  type: string
- doc: Print help, including hidden options, and exit
  id: full_help
  inputBinding:
    prefix: --full-help
  type: boolean
- doc: Specify an output file name. If argument is missing the converted energy parameters
    are printed to 'stdout'.
  id: output
  inputBinding:
    prefix: --output
  type: File
- doc: Specify an input file name. If argument is missing the energy parameter input
    can be supplied via 'stdin'.
  id: input
  inputBinding:
    prefix: --input
  type: File
- doc: Print just as much as needed to represent the given energy parameters data
    set. This option overrides all other output settings! (default=off)
  id: vanilla
  inputBinding:
    prefix: --vanilla
  type: boolean
- doc: Just dump Vienna 1.8.4 energy parameters in format used since 2.0. This option
    skips any energy parameter input! (default=off)
  id: dump
  inputBinding:
    prefix: --dump
  type: boolean
- doc: Print just energy parameters and appropriate comment lines but suppress all
    other output (default=off)
  id: silent
  inputBinding:
    prefix: --silent
  type: boolean
