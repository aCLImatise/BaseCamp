version 1.0

task GappaAnalyzeKrd {
  input {
    String? j_place_path
    Float? exponent
    Boolean? normalize
    Boolean? point_mass
    Boolean? ignore_multiplicities
    String? out_dir
    String? file_prefix
    String? matrix_format
    Boolean? omit_matrix_labels
    Boolean? allow_file_overwriting
    Boolean? verbose
    String? threads
    String? log_file
  }
  command <<<
    gappa analyze krd \
      ~{if defined(j_place_path) then ("--jplace-path " +  '"' + j_place_path + '"') else ""} \
      ~{if defined(exponent) then ("--exponent " +  '"' + exponent + '"') else ""} \
      ~{true="--normalize" false="" normalize} \
      ~{true="--point-mass" false="" point_mass} \
      ~{true="--ignore-multiplicities" false="" ignore_multiplicities} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(file_prefix) then ("--file-prefix " +  '"' + file_prefix + '"') else ""} \
      ~{if defined(matrix_format) then ("--matrix-format " +  '"' + matrix_format + '"') else ""} \
      ~{true="--omit-matrix-labels" false="" omit_matrix_labels} \
      ~{true="--allow-file-overwriting" false="" allow_file_overwriting} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    j_place_path: ":PATH(existing)=[] ... REQUIRED List of jplace files or directories to process. For directories, only files with the extension .jplace are processed."
    exponent: "=1          Exponent for KR integration."
    normalize: "Divide the KR distance by the tree length to get normalized values."
    point_mass: "Treat every pquery as a point mass concentrated on the highest-weight placement."
    ignore_multiplicities: "Set the multiplicity of each pquery to 1."
    out_dir: "=.            Directory to write files to"
    file_prefix: "File prefix for output files"
    matrix_format: ":{list,matrix,triangular}=matrix Format of the output matrix file."
    omit_matrix_labels: "If set, the output matrix is written without column and row labels."
    allow_file_overwriting: "Allow to overwrite existing output files instead of aborting the command."
    verbose: "Produce more verbose output."
    threads: "=8            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
}