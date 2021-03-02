version 1.0

task CompressFast5 {
  input {
    File? input_path
    Directory? save_path
    Boolean? in_place
    String? compression
    Boolean? sanitize
    Int? threads
    Boolean? recursive
    Boolean? ignore_symlinks
    String files
  }
  command <<<
    compress_fast5 \
      ~{files} \
      ~{if defined(input_path) then ("--input_path " +  '"' + input_path + '"') else ""} \
      ~{if defined(save_path) then ("--save_path " +  '"' + save_path + '"') else ""} \
      ~{if (in_place) then "--in_place" else ""} \
      ~{if defined(compression) then ("--compression " +  '"' + compression + '"') else ""} \
      ~{if (sanitize) then "--sanitize" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if (ignore_symlinks) then "--ignore_symlinks" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ont-fast5-api:3.3.0--py_0"
  }
  parameter_meta {
    input_path: "Folder containing single read fast5 files"
    save_path: "Folder to output multi read files to"
    in_place: "Replace the old files with new files in place"
    compression: "Target output compression type"
    sanitize: "Clean output files of optional groups and datasets\\n(e.g. 'Analyses')"
    threads: "Maximum number of threads to use"
    recursive: "Search recursively through folders for single_read\\nfast5 files"
    ignore_symlinks: "Ignore symlinks when searching recursively for fast5"
    files: "-v, --version         show program's version number and exit"
  }
  output {
    File out_stdout = stdout()
    Directory out_save_path = "${in_save_path}"
  }
}