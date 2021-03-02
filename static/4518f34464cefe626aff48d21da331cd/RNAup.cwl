class: CommandLineTool
id: RNAup.cwl
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
- id: in_no_output_file
  doc: Do not produce an output file.  (default=off)
  type: File?
  inputBinding:
    prefix: --no_output_file
- id: in_no_header
  doc: "Do not produce a header with the command line\nparameters used in the outputfile.\n\
    (default=off)"
  type: boolean?
  inputBinding:
    prefix: --no_header
- id: in_noconv
  doc: "Do not automatically substitude nucleotide \"T\"\nwith \"U\".  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --noconv
- id: in_u_length
  doc: "Specify the length of the unstructured region in\nthe output.  (default=`4')"
  type: long?
  inputBinding:
    prefix: --ulength
- id: in_contributions
  doc: "Specify the contributions listed in the output.\n(default=`S')"
  type: string?
  inputBinding:
    prefix: --contributions
- id: in_window
  doc: Set the maximal length of the region of
  type: long?
  inputBinding:
    prefix: --window
- id: in_include_both
  doc: "Include the probability of unpaired regions in\nboth (b) RNAs.  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --include_both
- id: in_extend_five
  doc: "Extend the region of interaction in the target to\nsome residues on the 5'\
    \ side."
  type: long?
  inputBinding:
    prefix: --extend5
- id: in_extend_three
  doc: "Extend the region of interaction in the target to\nsome residues on the 3'\
    \ side."
  type: long?
  inputBinding:
    prefix: --extend3
- id: in_interaction_pairwise
  doc: "Activate pairwise interaction mode.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --interaction_pairwise
- id: in_interaction_first
  doc: Activate interaction mode using first sequence
  type: boolean?
  inputBinding:
    prefix: --interaction_first
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
  doc: "Specify \"dangling end\" model for bases adjacent\nto helices in free ends\
    \ and multi-loops.\n(default=`2')"
  type: long?
  inputBinding:
    prefix: --dangles
- id: in_no_lp
  doc: "Produce structures without lonely pairs (helices\nof length 1).  (default=off)"
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
  doc: "Read energy parameters from paramfile, instead of\nusing the default parameter\
    \ set."
  type: File?
  inputBinding:
    prefix: --paramFile
- id: in_program
  doc: "-C, --constraint            Apply structural constraint(s) during prediction.\n\
    (default=off)"
  type: string
  inputBinding:
    position: 0
- id: in_only_dot
  doc: (default=off)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_no_output_file
  doc: Do not produce an output file.  (default=off)
  type: File?
  outputBinding:
    glob: $(inputs.in_no_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/viennarna:2.4.17--py36hd181a71_0
cwlVersion: v1.1
baseCommand:
- RNAup
