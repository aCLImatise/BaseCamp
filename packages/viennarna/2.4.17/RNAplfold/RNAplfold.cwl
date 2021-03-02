class: CommandLineTool
id: RNAplfold.cwl
inputs:
- id: in_detailed_help
  doc: "Print help, including all details and hidden\noptions, and exit"
  type: boolean?
  inputBinding:
    prefix: --detailed-help
- id: in_full_help
  doc: Print help, including hidden options, and exit
  type: boolean?
  inputBinding:
    prefix: --full-help
- id: in_verbose
  doc: Be verbose.  (default=off)
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_winsize
  doc: "Average the pair probabilities over windows of\ngiven size.  (default=`70')"
  type: long?
  inputBinding:
    prefix: --winsize
- id: in_span
  doc: "Set the maximum allowed separation of a base\npair to span."
  type: long?
  inputBinding:
    prefix: --span
- id: in_cut_off
  doc: "Report only base pairs with an average\nprobability > cutoff in the dot plot.\n\
    (default=`0.01')"
  type: double?
  inputBinding:
    prefix: --cutoff
- id: in_print_on_the_fly
  doc: Save memory by printing out everything during
  type: boolean?
  inputBinding:
    prefix: --print_onthefly
- id: in_u_length
  doc: "Compute the mean probability that regions of\nlength 1 to a given length are\
    \ unpaired.\n(default=`31')"
  type: long?
  inputBinding:
    prefix: --ulength
- id: in_opening_energies
  doc: Switch output from probabilities to their
  type: boolean?
  inputBinding:
    prefix: --opening_energies
- id: in_noconv
  doc: "Do not automatically substitude nucleotide\n\"T\" with \"U\".  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --noconv
- id: in_auto_id
  doc: "Automatically generate an ID for each sequence.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --auto-id
- id: in_id_prefix
  doc: "Prefix for automatically generated IDs (as used\nin output file names).  (default=`sequence')"
  type: File?
  inputBinding:
    prefix: --id-prefix
- id: in_shape
  doc: Use SHAPE reactivity data to guide structure
  type: File?
  inputBinding:
    prefix: --shape
- id: in_temp
  doc: "Rescale energy parameters to a temperature in\ndegrees centigrade.  (default=`37.0')"
  type: double?
  inputBinding:
    prefix: --temp
- id: in_no_tetra
  doc: "Do not include special tabulated stabilizing\nenergies for tri-, tetra- and\
    \ hexaloop\nhairpins.  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --noTetra
- id: in_dangles
  doc: "Specify \"dangling end\" model for bases\nadjacent to helices in free ends\
    \ and\nmulti-loops.  (default=`2')"
  type: long?
  inputBinding:
    prefix: --dangles
- id: in_no_lp
  doc: "Produce structures without lonely pairs\n(helices of length 1).  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --noLP
- id: in_no_gu
  doc: Do not allow GU pairs.  (default=off)
  type: boolean?
  inputBinding:
    prefix: --noGU
- id: in_no_closing_gu
  doc: "Do not allow GU pairs at the end of helices.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noClosingGU
- id: in_param_file
  doc: "Read energy parameters from paramfile, instead\nof using the default parameter\
    \ set."
  type: File?
  inputBinding:
    prefix: --paramFile
- id: in_computation_dot
  doc: (default=off)
  type: string
  inputBinding:
    position: 0
- id: in_logarithms_dot
  doc: (default=off)
  type: string
  inputBinding:
    position: 1
- id: in_predictions_dot
  doc: 'Model Details:'
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_id_prefix
  doc: "Prefix for automatically generated IDs (as used\nin output file names).  (default=`sequence')"
  type: File?
  outputBinding:
    glob: $(inputs.in_id_prefix)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/viennarna:2.4.17--py36hd181a71_0
cwlVersion: v1.1
baseCommand:
- RNAplfold
