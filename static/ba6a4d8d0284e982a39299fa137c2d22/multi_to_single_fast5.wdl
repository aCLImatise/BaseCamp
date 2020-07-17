version 1.0

task MultiToSingleFast5 {
  input {
    String? input_path
    String? save_path
    Boolean? recursive
    Boolean? ignore_symlinks
    String? threads
  }
  command <<<
    multi_to_single_fast5 \
      ~{if defined(input_path) then ("--input_path " +  '"' + input_path + '"') else ""} \
      ~{if defined(save_path) then ("--save_path " +  '"' + save_path + '"') else ""} \
      ~{true="--recursive" false="" recursive} \
      ~{true="--ignore_symlinks" false="" ignore_symlinks} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    input_path: "MultiRead fast5 file or path to directory of MultiRead files"
    save_path: "Folder to output SingleRead fast5 files to"
    recursive: "Search recursively through folders for MultiRead fast5 files"
    ignore_symlinks: "Ignore symlinks when searching recursively for fast5 files"
    threads: "Number of threads to use"
  }
}