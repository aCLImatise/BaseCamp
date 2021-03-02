class: CommandLineTool
id: RNAheat.cwl
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
- id: in_tmax
  doc: "Highest temperature\n(default=`100')"
  type: long?
  inputBinding:
    prefix: --Tmax
- id: in_step_size
  doc: "Calculate partition function every stepsize\ndegrees C\n(default=`1.')"
  type: double?
  inputBinding:
    prefix: --stepsize
- id: in_i_points
  doc: "The program fits a parabola to 2*ipoints+1 data\npoints to calculate 2nd derivatives.\
    \ Increasing\nthis parameter produces a smoother curve\n(default=`2')"
  type: long?
  inputBinding:
    prefix: --ipoints
- id: in_noconv
  doc: "Do not automatically substitude nucleotide \"T\"\nwith \"U\"\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noconv
- id: in_jobs
  doc: "[=number]        Split batch input into jobs and start processing\nin parallel\
    \ using multiple threads. A value of 0\nindicates to use as many parallel threads\
    \ as\ncomputation cores are available.\n(default=`0')"
  type: boolean?
  inputBinding:
    prefix: --jobs
- id: in_in_file
  doc: Read a file instead of reading from stdin
  type: File?
  inputBinding:
    prefix: --infile
- id: in_auto_id
  doc: "Automatically generate an ID for each sequence.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --auto-id
- id: in_id_prefix
  doc: "Prefix for automatically generated IDs (as used in\noutput file names)\n(default=`sequence')"
  type: File?
  inputBinding:
    prefix: --id-prefix
- id: in_max_bp_span
  doc: "Set the maximum base pair span\n(default=`-1')"
  type: long?
  inputBinding:
    prefix: --maxBPspan
- id: in_no_tetra
  doc: "Do not include special tabulated stabilizing\nenergies for tri-, tetra- and\
    \ hexaloop hairpins.\nMostly for testing.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noTetra
- id: in_dangles
  doc: "How to treat \"dangling end\" energies for bases\nadjacent to helices in free\
    \ ends and multi-loops\n(default=`2')"
  type: long?
  inputBinding:
    prefix: --dangles
- id: in_no_lp
  doc: "Produce structures without lonely pairs (helices\nof length 1).\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noLP
- id: in_no_gu
  doc: "Do not allow GU pairs\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noGU
- id: in_no_closing_gu
  doc: "Do not allow GU pairs at the end of helices\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noClosingGU
- id: in_param_file
  doc: "Read energy parameters from paramfile, instead of\nusing the default parameter\
    \ set."
  type: File?
  inputBinding:
    prefix: --paramFile
- id: in_g_quad
  doc: "Incoorporate G-Quadruplex formation into the\nstructure prediction algorithm.\n\
    (default=off)"
  type: boolean?
  inputBinding:
    prefix: --gquad
- id: in_circ
  doc: Assume a circular (instead of linear) RNA
  type: boolean?
  inputBinding:
    prefix: --circ
- id: in_program
  doc: "--Tmin=t1              Lowest temperature\n(default=`0')"
  type: string
  inputBinding:
    position: 0
- id: in_molecule_dot
  doc: (default=off)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_id_prefix
  doc: "Prefix for automatically generated IDs (as used in\noutput file names)\n(default=`sequence')"
  type: File?
  outputBinding:
    glob: $(inputs.in_id_prefix)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/viennarna:2.4.17--py36hd181a71_0
cwlVersion: v1.1
baseCommand:
- RNAheat
