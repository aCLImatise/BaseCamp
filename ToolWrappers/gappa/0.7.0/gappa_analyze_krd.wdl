version 1.0

task GappaAnalyzeKrd {
  input {
    File? j_place_path
    Float? exponent
    Boolean? normalize
    Boolean? point_mass
    Boolean? ignore_multiplicities
    Directory? krd_out_dir
    File? krd_file_prefix
    File? krd_file_suffix
    File? krd_compress
    File? krd_matrix_format
    Boolean? omit_krd_matrix_labels
    Boolean? allow_file_overwriting
    Boolean? verbose
    Int? threads
    File? log_file
  }
  command <<<
    gappa analyze krd \
      ~{if defined(j_place_path) then ("--jplace-path " +  '"' + j_place_path + '"') else ""} \
      ~{if defined(exponent) then ("--exponent " +  '"' + exponent + '"') else ""} \
      ~{if (normalize) then "--normalize" else ""} \
      ~{if (point_mass) then "--point-mass" else ""} \
      ~{if (ignore_multiplicities) then "--ignore-multiplicities" else ""} \
      ~{if defined(krd_out_dir) then ("--krd-out-dir " +  '"' + krd_out_dir + '"') else ""} \
      ~{if defined(krd_file_prefix) then ("--krd-file-prefix " +  '"' + krd_file_prefix + '"') else ""} \
      ~{if defined(krd_file_suffix) then ("--krd-file-suffix " +  '"' + krd_file_suffix + '"') else ""} \
      ~{if (krd_compress) then "--krd-compress" else ""} \
      ~{if defined(krd_matrix_format) then ("--krd-matrix-format " +  '"' + krd_matrix_format + '"') else ""} \
      ~{if (omit_krd_matrix_labels) then "--omit-krd-matrix-labels" else ""} \
      ~{if (allow_file_overwriting) then "--allow-file-overwriting" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gappa:0.7.0--he513fc3_0"
  }
  parameter_meta {
    j_place_path: ":PATH(existing)=[] ... REQUIRED\\nList of jplace files or directories to process. For directories, only files with the extension `.jplace[.gz]` are processed."
    exponent: "=1          Exponent for KR integration."
    normalize: "Divide the KR distance by the tree length to get normalized values."
    point_mass: "Treat every pquery as a point mass concentrated on the highest-weight placement."
    ignore_multiplicities: "Set the multiplicity of each pquery to 1."
    krd_out_dir: "=.        Directory to write krd files to"
    krd_file_prefix: "File prefix for krd files"
    krd_file_suffix: "File suffix for krd files"
    krd_compress: "If set, compress the krd files using gzip. Output file extensions are automatically extended by `.gz`."
    krd_matrix_format: ":{list,matrix,triangular}=matrix\\nFormat of the output matrix file."
    omit_krd_matrix_labels: "If set, the output matrix is written without column and row labels."
    allow_file_overwriting: "Allow to overwrite existing output files instead of aborting the command."
    verbose: "Produce more verbose output."
    threads: "=8            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
  output {
    File out_stdout = stdout()
    File out_krd_compress = "${in_krd_compress}"
    File out_krd_matrix_format = "${in_krd_matrix_format}"
    File out_log_file = "${in_log_file}"
  }
}