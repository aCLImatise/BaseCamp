version 1.0

task SingleToMultiFast5 {
  input {
    String? input_path
    String? save_path
    File? filename_base
    String? batch_size
    String? threads
    Boolean? recursive
    Boolean? ignore_symlinks
    String? compression
  }
  command <<<
    single_to_multi_fast5 \
      ~{if defined(input_path) then ("--input_path " +  '"' + input_path + '"') else ""} \
      ~{if defined(save_path) then ("--save_path " +  '"' + save_path + '"') else ""} \
      ~{if defined(filename_base) then ("--filename_base " +  '"' + filename_base + '"') else ""} \
      ~{if defined(batch_size) then ("--batch_size " +  '"' + batch_size + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--recursive" false="" recursive} \
      ~{true="--ignore_symlinks" false="" ignore_symlinks} \
      ~{if defined(compression) then ("--compression " +  '"' + compression + '"') else ""}
  >>>
  parameter_meta {
    input_path: "Folder containing single read fast5 files"
    save_path: "Folder to output multi read files to"
    filename_base: "Root of output filename, default='batch' -> 'batch_0.fast5'"
    batch_size: "Number of reads per multi-read file"
    threads: "Number of threads to use"
    recursive: "Search recursively through folders for single_read fast5 files"
    ignore_symlinks: "Ignore symlinks when searching recursively for fast5 files"
    compression: "Target output compression type"
  }
}