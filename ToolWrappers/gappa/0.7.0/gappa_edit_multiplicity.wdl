version 1.0

task GappaEditMultiplicity {
  input {
    File? j_place_path
    File? multiplicity_file
    File? fast_a_path
    File? keep_full_label
    File? write_multiplicity_file
    Directory? out_dir
    File? file_prefix
    File? file_suffix
    File? compress
    Boolean? allow_file_overwriting
    Boolean? verbose
    Int? threads
    File? log_file
  }
  command <<<
    gappa edit multiplicity \
      ~{if defined(j_place_path) then ("--jplace-path " +  '"' + j_place_path + '"') else ""} \
      ~{if defined(multiplicity_file) then ("--multiplicity-file " +  '"' + multiplicity_file + '"') else ""} \
      ~{if defined(fast_a_path) then ("--fasta-path " +  '"' + fast_a_path + '"') else ""} \
      ~{if defined(keep_full_label) then ("--keep-full-label " +  '"' + keep_full_label + '"') else ""} \
      ~{if defined(write_multiplicity_file) then ("--write-multiplicity-file " +  '"' + write_multiplicity_file + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(file_prefix) then ("--file-prefix " +  '"' + file_prefix + '"') else ""} \
      ~{if defined(file_suffix) then ("--file-suffix " +  '"' + file_suffix + '"') else ""} \
      ~{if (compress) then "--compress" else ""} \
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
    multiplicity_file: ":FILE Excludes: --fasta-path --write-multiplicity-file\\nFile containing a tab-separated list of [sample name,] query name, and multiplicity."
    fast_a_path: ":PATH(existing)=[] ... Excludes: --multiplicity-file --write-multiplicity-file\\nList of fasta files or directories to process. For directories, only files with the extension `.(fasta|fas|fsa|fna|ffn|faa|frn)[.gz]` are processed."
    keep_full_label: ": --fasta-path\\nIf fasta files are used, keep their whole label as the name for jplace pqueries, instead of removing the abundance annotation."
    write_multiplicity_file: ": --multiplicity-file --fasta-path\\nDo not change the existing multiplicities, but instead produce a file that lists them."
    out_dir: "=.            Directory to write files to"
    file_prefix: "File prefix for output files"
    file_suffix: "File suffix for output files"
    compress: "If set, compress the output files using gzip. Output file extensions are automatically extended by `.gz`."
    allow_file_overwriting: "Allow to overwrite existing output files instead of aborting the command."
    verbose: "Produce more verbose output."
    threads: "=8            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
  output {
    File out_stdout = stdout()
    File out_file_prefix = "${in_file_prefix}"
    File out_file_suffix = "${in_file_suffix}"
    File out_compress = "${in_compress}"
    File out_log_file = "${in_log_file}"
  }
}