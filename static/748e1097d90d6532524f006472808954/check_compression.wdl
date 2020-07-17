version 1.0

task CheckCompression {
  input {
    String? input_path
    Boolean? check_all_reads
    Boolean? recursive
    Boolean? ignore_symlinks
    File? file_list
    String tool
    String for
    String checking
    String the
    String compression
    String type
    String of
    String raw
    String data
    String in
    String fast_five
    File files
  }
  command <<<
    check_compression \
      ~{tool} \
      ~{for} \
      ~{checking} \
      ~{the} \
      ~{compression} \
      ~{type} \
      ~{of} \
      ~{raw} \
      ~{data} \
      ~{in} \
      ~{fast_five} \
      ~{files} \
      ~{if defined(input_path) then ("--input_path " +  '"' + input_path + '"') else ""} \
      ~{true="--check_all_reads" false="" check_all_reads} \
      ~{true="--recursive" false="" recursive} \
      ~{true="--ignore_symlinks" false="" ignore_symlinks} \
      ~{if defined(file_list) then ("--file_list " +  '"' + file_list + '"') else ""}
  >>>
  parameter_meta {
    input_path: "Path to Fast5 file or directory of Fast5 files"
    check_all_reads: "Check all reads in a file individually (default: check only the first read)"
    recursive: "Search recursively through folders for MultiRead fast5 files"
    ignore_symlinks: "Ignore symlinks when searching recursively for fast5 files"
    file_list: "File containing names of files to search in"
    tool: ""
    for: ""
    checking: ""
    the: ""
    compression: ""
    type: ""
    of: ""
    raw: ""
    data: ""
    in: ""
    fast_five: ""
    files: ""
  }
}