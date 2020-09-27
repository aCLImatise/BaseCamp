class: CommandLineTool
id: RNALalifold.cwl
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
- id: in_csv
  doc: "Create comma seperated output (csv)\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --csv
- id: in_part_func
  doc: "[=INT]          Calculate the partition function and base\npairing probability\
    \ matrix in addition to the\nmfe structure.  (default=`1')"
  type: boolean
  inputBinding:
    prefix: --partfunc
- id: in_cut_off
  doc: "Report only base pairs with an average\nprobability > cutoff in the dot plot\n\
    (default=`0.01')"
  type: double
  inputBinding:
    prefix: --cutoff
- id: in_mis
  doc: "Output \"most informative sequence\" instead of\nsimple consensus: For each\
    \ column of the\nalignment output the set of nucleotides with\nfrequence greater\
    \ than average in IUPAC\nnotation.\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --mis
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
- id: in_c_factor
  doc: "Set the weight of the covariance term in the\nenergy function\n(default=`1.0')"
  type: double
  inputBinding:
    prefix: --cfactor
- id: in_n_factor
  doc: "Set the penalty for non-compatible sequences in\nthe covariance term of the\
    \ energy function\n(default=`1.0')"
  type: double
  inputBinding:
    prefix: --nfactor
- id: in_ribo_sum_file
  doc: "use specified Ribosum Matrix instead of normal\nenergy model. Matrixes to\
    \ use should be 6x6\nmatrices, the order of the terms is AU, CG,\nGC, GU, UA,\
    \ UG."
  type: File
  inputBinding:
    prefix: --ribosum_file
- id: in_ribo_sum_scoring
  doc: "use ribosum scoring matrix. The matrix is\nchosen according to the minimal\
    \ and maximal\npairwise identities of the sequences in the\nfile.\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --ribosum_scoring
- id: in_structures_dot
  doc: -h, --help                    Print help and exit
  type: string
  inputBinding:
    position: 0
- id: in_program
  doc: "-L, --span=INT                Set the maximum allowed separation of a base\
    \ \npair to span. I.e. no pairs (i,j) with\nj-i>span will be allowed.\n(default=`70')"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- RNALalifold
