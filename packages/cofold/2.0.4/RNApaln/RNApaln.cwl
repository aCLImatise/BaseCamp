class: CommandLineTool
id: RNApaln.cwl
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
- id: in_noconv
  doc: "Do not automatically substitude nucleotide\n\"T\" with \"U\"\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --noconv
- id: in_mode
  doc: Set the alignment mode to be used
  type: string
  inputBinding:
    prefix: --mode
- id: in_gap_o
  doc: Set the gap open penalty
  type: string
  inputBinding:
    prefix: --gapo
- id: in_gape
  doc: Set the gap extension penalty
  type: string
  inputBinding:
    prefix: --gape
- id: in_seq_w
  doc: "Set the weight of sequence (compared to\nstructure) in the scoring function."
  type: string
  inputBinding:
    prefix: --seqw
- id: in_end_gaps
  doc: "Use free end-gaps\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --endgaps
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
- id: in_program
  doc: "-B, --printAlignment[=filename]\nPrint an \"alignment\" with gaps of the\n\
    profiles\nThe aligned structures are written to\nfilename, if specified\nOtherwise\
    \ output is written to stdout, unless\nthe -Xm option is set in which case\n\"\
    backtrack.file\" is used.\n(default=`stdout')"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- RNApaln
