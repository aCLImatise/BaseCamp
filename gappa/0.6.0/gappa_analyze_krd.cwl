class: CommandLineTool
id: gappa_analyze_krd.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: j_place_path
  doc: :PATH(existing)=[] ... REQUIRED List of jplace files or directories to process.
    For directories, only files with the extension .jplace are processed.
  type: string
  inputBinding:
    prefix: --jplace-path
- id: exponent
  doc: =1          Exponent for KR integration.
  type: double
  inputBinding:
    prefix: --exponent
- id: normalize
  doc: Divide the KR distance by the tree length to get normalized values.
  type: boolean
  inputBinding:
    prefix: --normalize
- id: point_mass
  doc: Treat every pquery as a point mass concentrated on the highest-weight placement.
  type: boolean
  inputBinding:
    prefix: --point-mass
- id: ignore_multiplicities
  doc: Set the multiplicity of each pquery to 1.
  type: boolean
  inputBinding:
    prefix: --ignore-multiplicities
- id: out_dir
  doc: =.            Directory to write files to
  type: string
  inputBinding:
    prefix: --out-dir
- id: file_prefix
  doc: File prefix for output files
  type: string
  inputBinding:
    prefix: --file-prefix
- id: matrix_format
  doc: :{list,matrix,triangular}=matrix Format of the output matrix file.
  type: string
  inputBinding:
    prefix: --matrix-format
- id: omit_matrix_labels
  doc: If set, the output matrix is written without column and row labels.
  type: boolean
  inputBinding:
    prefix: --omit-matrix-labels
- id: allow_file_overwriting
  doc: Allow to overwrite existing output files instead of aborting the command.
  type: boolean
  inputBinding:
    prefix: --allow-file-overwriting
- id: verbose
  doc: Produce more verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: threads
  doc: =8            Number of threads to use for calculations.
  type: string
  inputBinding:
    prefix: --threads
- id: log_file
  doc: Write all output to a log file, in addition to standard output to the terminal.
  type: string
  inputBinding:
    prefix: --log-file
outputs: []
cwlVersion: v1.1
baseCommand:
- gappa
- analyze
- krd
