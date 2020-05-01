#!/usr/bin/env cwl-runner

baseCommand:
- RNAplfold
class: CommandLineTool
cwlVersion: v1.0
id: rnaplfold
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
- doc: Be verbose. (default=off)
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Average the pair probabilities over windows of given size (default=`70')
  id: winsize
  inputBinding:
    prefix: --winsize
  type: long
- doc: Set the maximum allowed separation of a base pair to span. I.e. no pairs (i,j)
    with j-i > span will be allowed. Defaults to winsize if parameter is omitted
  id: span
  inputBinding:
    prefix: --span
  type: long
- doc: Report only base pairs with an average probability > cutoff in the dot plot
    (default=`0.01')
  id: cut_off
  inputBinding:
    prefix: --cutoff
  type: double
- doc: 'Save memory by printing out everything during computation. NOTE: activated
    per default for sequences over 1M bp. (default=off)'
  id: print_on_the_fly
  inputBinding:
    prefix: --print_onthefly
  type: boolean
- doc: Compute the mean probability that regions of length 1 to a given length are
    unpaired. Output is saved in a _lunp file. (default=`31')
  id: u_length
  inputBinding:
    prefix: --ulength
  type: long
- doc: 'Switch output from probabilities to their logarithms, which are NOT exactly
    the mean energies needed to the respective stretch of bases! NOTE: This actives
    -u option. (default=off)'
  id: opening_energies
  inputBinding:
    prefix: --opening_energies
  type: boolean
- doc: Do not automatically substitude nucleotide "T" with "U" (default=off)
  id: noconv
  inputBinding:
    prefix: --noconv
  type: boolean
- doc: Automatically generate an ID for each sequence. (default=off)
  id: auto_id
  inputBinding:
    prefix: --auto-id
  type: boolean
- doc: Prefix for automatically generated IDs (as used in output file names) (default=`sequence')
  id: id_prefix
  inputBinding:
    prefix: --id-prefix
  type: string
- doc: Use SHAPE reactivity data to guide structure predictions
  id: shape
  inputBinding:
    prefix: --shape
  type: File
- doc: =[D/Z/W] + [optional parameters] Select method to incorporate SHAPE reactivity
    data. (default=`D')
  id: shape_method
  inputBinding:
    prefix: --shapeMethod
  type: boolean
- doc: /C/S/L/O  + [optional parameters] Select method to convert SHAPE reactivities
    to pairing probabilities. (default=`O')
  id: shape_conversion
  inputBinding:
    prefix: --shapeConversion
  type: string
- doc: How to treat "dangling end" energies for bases adjacent to helices in free
    ends and multi-loops (default=`2')
  id: dangles
  inputBinding:
    prefix: --dangles
  type: long
- doc: Produce structures without lonely pairs (helices of length 1). (default=off)
  id: no_lp
  inputBinding:
    prefix: --noLP
  type: boolean
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
- doc: Read energy parameters from paramfile, instead of using the default parameter
    set.
  id: param_file
  inputBinding:
    prefix: --paramFile
  type: string
- doc: Output accessibility profiles in binary format .  (default=off)
  id: binaries
  inputBinding:
    prefix: --binaries
  type: boolean
