version 1.0

task CompressFast5 {
  input {
    String? input_path
    String? save_path
    Boolean? in_place
    String? target_output_compression
    String? threads
    Boolean? recursive
    Boolean? ignore_symlinks
    String tool
    String for
    String changing
    String the
    String var_11
    String of
    String fast_five
    File files
  }
  command <<<
    compress_fast5 \
      ~{tool} \
      ~{for} \
      ~{changing} \
      ~{the} \
      ~{var_11} \
      ~{of} \
      ~{fast_five} \
      ~{files} \
      ~{if defined(input_path) then ("--input_path " +  '"' + input_path + '"') else ""} \
      ~{if defined(save_path) then ("--save_path " +  '"' + save_path + '"') else ""} \
      ~{true="--in_place" false="" in_place} \
      ~{if defined(target_output_compression) then ("--compression " +  '"' + target_output_compression + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--recursive" false="" recursive} \
      ~{true="--ignore_symlinks" false="" ignore_symlinks}
  >>>
  parameter_meta {
    input_path: "Folder containing single read fast5 files"
    save_path: "Folder to output multi read files to"
    in_place: "Replace the old files with new files in place"
    target_output_compression: "Target output compression type"
    threads: "Maximum number of threads to use"
    recursive: "Search recursively through folders for single_read fast5 files"
    ignore_symlinks: "Ignore symlinks when searching recursively for fast5 files"
    tool: ""
    for: ""
    changing: ""
    the: ""
    var_11: ""
    of: ""
    fast_five: ""
    files: ""
  }
}