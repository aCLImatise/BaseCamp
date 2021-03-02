class: CommandLineTool
id: RNALfold.cwl
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
- id: in_span
  doc: "Set the maximum distance between any two\npairing nucleotides.\n(default=`150')"
  type: long?
  inputBinding:
    prefix: --span
- id: in_outfile
  doc: '[=<filename>]    Print output to file instead of stdout'
  type: File?
  inputBinding:
    prefix: --outfile
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
- id: in_zscore
  doc: "[=DOUBLE]         Limit the output to predictions with a Z-score\nbelow a\
    \ threshold\n(default=`-2')"
  type: boolean?
  inputBinding:
    prefix: --zscore
- id: in_g_quad
  doc: "Incoorporate G-Quadruplex formation into the\nstructure prediction algorithm\n\
    (default=off)"
  type: boolean?
  inputBinding:
    prefix: --gquad
- id: in_shape
  doc: Use SHAPE reactivity data to guide structure
  type: File?
  inputBinding:
    prefix: --shape
- id: in_temp
  doc: "Rescale energy parameters to a temperature of\ntemp C. Default is 37C."
  type: long?
  inputBinding:
    prefix: --temp
- id: in_dangles
  doc: "Change the dangling end model\n(default=`2')"
  type: long?
  inputBinding:
    prefix: --dangles
- id: in_no_lp
  doc: "Produce structures without lonely pairs\n(helices of length 1).\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noLP
- id: in_param_file
  doc: "Read energy parameters from paramfile, instead\nof using the default parameter\
    \ set."
  type: File?
  inputBinding:
    prefix: --paramFile
- id: in_program
  doc: "-v, --verbose                 Be verbose\n(default=off)"
  type: string
  inputBinding:
    position: 0
- id: in_predictions_dot
  doc: 'Model Details:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: '[=<filename>]    Print output to file instead of stdout'
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- RNALfold
