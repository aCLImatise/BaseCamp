#!/usr/bin/env cwl-runner

baseCommand:
- RNALfold
class: CommandLineTool
cwlVersion: v1.0
id: rnalfold
inputs:
- doc: Print help, including all details and hidden options, and exit
  id: detailed_help
  inputBinding:
    prefix: --detailed-help
  type: boolean
- doc: Print help, including hidden options, and exit
  id: full_help
  inputBinding:
    prefix: --full-help
  type: boolean
- doc: Be verbose (default=off)
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Set the maximum distance between any two pairing nucleotides. (default=`150')
  id: span
  inputBinding:
    prefix: --span
  type: long
- doc: '[=<filename>]    Print output to file instead of stdout'
  id: outfile
  inputBinding:
    prefix: --outfile
  type: boolean
- doc: Read a file instead of reading from stdin
  id: in_file
  inputBinding:
    prefix: --infile
  type: File
- doc: Automatically generate an ID for each sequence. (default=off)
  id: auto_id
  inputBinding:
    prefix: --auto-id
  type: boolean
- doc: "[=DOUBLE]         Limit the output to predictions with a Z-score below a threshold\
    \ (default=`-2')"
  id: zscore
  inputBinding:
    prefix: --zscore
  type: boolean
- doc: Incoorporate G-Quadruplex formation into the structure prediction algorithm
    (default=off)
  id: g_quad
  inputBinding:
    prefix: --gquad
  type: boolean
- doc: Use SHAPE reactivity data to guide structure predictions.
  id: shape
  inputBinding:
    prefix: --shape
  type: File
- doc: Rescale energy parameters to a temperature of temp C. Default is 37C.
  id: temp
  inputBinding:
    prefix: --temp
  type: string
- doc: Change the dangling end model (default=`2')
  id: dangles
  inputBinding:
    prefix: --dangles
  type: long
- doc: Produce structures without lonely pairs (helices of length 1). (default=off)
  id: no_lp
  inputBinding:
    prefix: --noLP
  type: boolean
- doc: Read energy parameters from paramfile, instead of using the default parameter
    set.
  id: param_file
  inputBinding:
    prefix: --paramFile
  type: string
