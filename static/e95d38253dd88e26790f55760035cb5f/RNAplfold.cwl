class: CommandLineTool
id: RNAplfold.cwl
inputs:
- id: detailed_help
  doc: Print help, including all details and hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --detailed-help
- id: full_help
  doc: Print help, including hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --full-help
- id: verbose
  doc: Be verbose. (default=off)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: winsize
  doc: Average the pair probabilities over windows of given size (default=`70')
  type: long
  inputBinding:
    prefix: --winsize
- id: span
  doc: Set the maximum allowed separation of a base pair to span. I.e. no pairs (i,j)
    with j-i > span will be allowed. Defaults to winsize if parameter is omitted
  type: long
  inputBinding:
    prefix: --span
- id: cut_off
  doc: Report only base pairs with an average probability > cutoff in the dot plot
    (default=`0.01')
  type: double
  inputBinding:
    prefix: --cutoff
- id: print_on_the_fly
  doc: 'Save memory by printing out everything during computation. NOTE: activated
    per default for sequences over 1M bp. (default=off)'
  type: boolean
  inputBinding:
    prefix: --print_onthefly
- id: u_length
  doc: Compute the mean probability that regions of length 1 to a given length are
    unpaired. Output is saved in a _lunp file. (default=`31')
  type: long
  inputBinding:
    prefix: --ulength
- id: opening_energies
  doc: 'Switch output from probabilities to their logarithms, which are NOT exactly
    the mean energies needed to the respective stretch of bases! NOTE: This actives
    -u option. (default=off)'
  type: boolean
  inputBinding:
    prefix: --opening_energies
- id: noconv
  doc: Do not automatically substitude nucleotide "T" with "U" (default=off)
  type: boolean
  inputBinding:
    prefix: --noconv
- id: auto_id
  doc: Automatically generate an ID for each sequence. (default=off)
  type: boolean
  inputBinding:
    prefix: --auto-id
- id: id_prefix
  doc: Prefix for automatically generated IDs (as used in output file names) (default=`sequence')
  type: string
  inputBinding:
    prefix: --id-prefix
- id: shape
  doc: Use SHAPE reactivity data to guide structure predictions
  type: File
  inputBinding:
    prefix: --shape
- id: shape_method
  doc: =[D/Z/W] + [optional parameters] Select method to incorporate SHAPE reactivity
    data. (default=`D')
  type: boolean
  inputBinding:
    prefix: --shapeMethod
- id: shape_conversion
  doc: /C/S/L/O  + [optional parameters] Select method to convert SHAPE reactivities
    to pairing probabilities. (default=`O')
  type: string
  inputBinding:
    prefix: --shapeConversion
- id: dangles
  doc: How to treat "dangling end" energies for bases adjacent to helices in free
    ends and multi-loops (default=`2')
  type: long
  inputBinding:
    prefix: --dangles
- id: no_lp
  doc: Produce structures without lonely pairs (helices of length 1). (default=off)
  type: boolean
  inputBinding:
    prefix: --noLP
- id: no_gu
  doc: Do not allow GU pairs (default=off)
  type: boolean
  inputBinding:
    prefix: --noGU
- id: no_closing_gu
  doc: Do not allow GU pairs at the end of helices (default=off)
  type: boolean
  inputBinding:
    prefix: --noClosingGU
- id: param_file
  doc: Read energy parameters from paramfile, instead of using the default parameter
    set.
  type: string
  inputBinding:
    prefix: --paramFile
- id: binaries
  doc: Output accessibility profiles in binary format .  (default=off)
  type: boolean
  inputBinding:
    prefix: --binaries
outputs: []
cwlVersion: v1.1
baseCommand:
- RNAplfold
