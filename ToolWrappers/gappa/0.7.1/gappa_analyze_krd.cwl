class: CommandLineTool
id: gappa_analyze_krd.cwl
inputs:
- id: in_j_place_path
  doc: ":PATH(existing)=[] ... REQUIRED\nList of jplace files or directories to process.\
    \ For directories, only files with the extension `.jplace[.gz]` are processed."
  type: File?
  inputBinding:
    prefix: --jplace-path
- id: in_exponent
  doc: =1          Exponent for KR integration.
  type: double?
  inputBinding:
    prefix: --exponent
- id: in_normalize
  doc: Divide the KR distance by the tree length to get normalized values.
  type: boolean?
  inputBinding:
    prefix: --normalize
- id: in_point_mass
  doc: Treat every pquery as a point mass concentrated on the highest-weight placement.
  type: boolean?
  inputBinding:
    prefix: --point-mass
- id: in_ignore_multiplicities
  doc: Set the multiplicity of each pquery to 1.
  type: boolean?
  inputBinding:
    prefix: --ignore-multiplicities
- id: in_krd_out_dir
  doc: =.        Directory to write krd files to
  type: Directory?
  inputBinding:
    prefix: --krd-out-dir
- id: in_krd_file_prefix
  doc: File prefix for krd files
  type: File?
  inputBinding:
    prefix: --krd-file-prefix
- id: in_krd_file_suffix
  doc: File suffix for krd files
  type: File?
  inputBinding:
    prefix: --krd-file-suffix
- id: in_krd_compress
  doc: If set, compress the krd files using gzip. Output file extensions are automatically
    extended by `.gz`.
  type: File?
  inputBinding:
    prefix: --krd-compress
- id: in_krd_matrix_format
  doc: ":{list,matrix,triangular}=matrix\nFormat of the output matrix file."
  type: File?
  inputBinding:
    prefix: --krd-matrix-format
- id: in_omit_krd_matrix_labels
  doc: If set, the output matrix is written without column and row labels.
  type: boolean?
  inputBinding:
    prefix: --omit-krd-matrix-labels
- id: in_allow_file_overwriting
  doc: Allow to overwrite existing output files instead of aborting the command.
  type: boolean?
  inputBinding:
    prefix: --allow-file-overwriting
- id: in_verbose
  doc: Produce more verbose output.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_threads
  doc: =1            Number of threads to use for calculations.
  type: long?
  inputBinding:
    prefix: --threads
- id: in_log_file
  doc: Write all output to a log file, in addition to standard output to the terminal.
  type: File?
  inputBinding:
    prefix: --log-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_krd_compress
  doc: If set, compress the krd files using gzip. Output file extensions are automatically
    extended by `.gz`.
  type: File?
  outputBinding:
    glob: $(inputs.in_krd_compress)
- id: out_krd_matrix_format
  doc: ":{list,matrix,triangular}=matrix\nFormat of the output matrix file."
  type: File?
  outputBinding:
    glob: $(inputs.in_krd_matrix_format)
- id: out_log_file
  doc: Write all output to a log file, in addition to standard output to the terminal.
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gappa:0.7.1--he513fc3_0
cwlVersion: v1.1
baseCommand:
- gappa
- analyze
- krd
