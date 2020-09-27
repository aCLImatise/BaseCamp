class: CommandLineTool
id: RNAplfold.cwl
inputs:
- id: in_detailed_help
  doc: "Print help, including all details and hidden\noptions, and exit"
  type: boolean
  inputBinding:
    prefix: --detailed-help
- id: in_full_help
  doc: Print help, including hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --full-help
- id: in_verbose
  doc: "Be verbose.\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_winsize
  doc: "Average the pair probabilities over windows of\ngiven size\n(default=`70')"
  type: long
  inputBinding:
    prefix: --winsize
- id: in_span
  doc: "Set the maximum allowed separation of a base\npair to span. I.e. no pairs\
    \ (i,j) with j-i >\nspan will be allowed. Defaults to winsize if\nparameter is\
    \ omitted"
  type: long
  inputBinding:
    prefix: --span
- id: in_cut_off
  doc: "Report only base pairs with an average\nprobability > cutoff in the dot plot\n\
    (default=`0.01')"
  type: double
  inputBinding:
    prefix: --cutoff
- id: in_print_on_the_fly
  doc: Save memory by printing out everything during
  type: boolean
  inputBinding:
    prefix: --print_onthefly
- id: in_u_length
  doc: "Compute the mean probability that regions of\nlength 1 to a given length are\
    \ unpaired.\nOutput is saved in a _lunp file.\n(default=`31')"
  type: long
  inputBinding:
    prefix: --ulength
- id: in_opening_energies
  doc: "Switch output from probabilities to their\nlogarithms, which are NOT exactly\
    \ the mean\nenergies needed to the respective stretch of\nbases!\nNOTE: This actives\
    \ -u option.\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --opening_energies
- id: in_noconv
  doc: "Do not automatically substitude nucleotide\n\"T\" with \"U\"\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --noconv
- id: in_auto_id
  doc: "Automatically generate an ID for each sequence.\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --auto-id
- id: in_id_prefix
  doc: "Prefix for automatically generated IDs (as used\nin output file names)\n(default=`sequence')"
  type: File
  inputBinding:
    prefix: --id-prefix
- id: in_shape
  doc: Use SHAPE reactivity data to guide structure
  type: File
  inputBinding:
    prefix: --shape
- id: in_shape_conversion
  doc: "+ [optional parameters]\nSelect method to convert SHAPE reactivities to\n\
    pairing probabilities.\n(default=`O')"
  type: string
  inputBinding:
    prefix: --shapeConversion
- id: in_temp
  doc: "Rescale energy parameters to a temperature of\ntemp C. Default is 37C."
  type: long
  inputBinding:
    prefix: --temp
- id: in_no_tetra
  doc: "Do not include special tabulated stabilizing\nenergies for tri-, tetra- and\
    \ hexaloop\nhairpins. Mostly for testing.\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --noTetra
- id: in_dangles
  doc: "How to treat \"dangling end\" energies for\nbases adjacent to helices in free\
    \ ends and\nmulti-loops\n(default=`2')"
  type: long
  inputBinding:
    prefix: --dangles
- id: in_no_lp
  doc: "Produce structures without lonely pairs\n(helices of length 1).\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --noLP
- id: in_no_gu
  doc: "Do not allow GU pairs\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --noGU
- id: in_no_closing_gu
  doc: "Do not allow GU pairs at the end of helices\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --noClosingGU
- id: in_param_file
  doc: "Read energy parameters from paramfile, instead\nof using the default parameter\
    \ set."
  type: File
  inputBinding:
    prefix: --paramFile
- id: in_binaries
  doc: "Output accessibility profiles in binary format\n.  (default=off)"
  type: boolean
  inputBinding:
    prefix: --binaries
- id: in_computation_dot
  doc: 'NOTE: activated per default for sequences'
  type: string
  inputBinding:
    position: 0
- id: in_predictions
  doc: --shapeMethod=[D/Z/W] + [optional parameters]
  type: string
  inputBinding:
    position: 0
- id: in_data_dot
  doc: (default=`D')
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_id_prefix
  doc: "Prefix for automatically generated IDs (as used\nin output file names)\n(default=`sequence')"
  type: File
  outputBinding:
    glob: $(inputs.in_id_prefix)
cwlVersion: v1.1
baseCommand:
- RNAplfold
