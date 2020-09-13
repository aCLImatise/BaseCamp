version 1.0

task SingleToMultiFast5 {
  input {
    File? input_path
    Directory? save_path
    File? filename_base
    Int? batch_size
    Int? threads
    Boolean? recursive
    Boolean? ignore_symlinks
    String files
  }
  command <<<
    single_to_multi_fast5 \
      ~{files} \
      ~{if defined(input_path) then ("--input_path " +  '"' + input_path + '"') else ""} \
      ~{if defined(save_path) then ("--save_path " +  '"' + save_path + '"') else ""} \
      ~{if defined(filename_base) then ("--filename_base " +  '"' + filename_base + '"') else ""} \
      ~{if defined(batch_size) then ("--batch_size " +  '"' + batch_size + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if (ignore_symlinks) then "--ignore_symlinks" else ""}
  >>>
  parameter_meta {
    input_path: "Folder containing single read fast5 files"
    save_path: "Folder to output multi read files to"
    filename_base: "Root of output filename, default='batch' ->\\n'batch_0.fast5'"
    batch_size: "Number of reads per multi-read file"
    threads: "Number of threads to use"
    recursive: "Search recursively through folders for single_read\\nfast5 files"
    ignore_symlinks: "Ignore symlinks when searching recursively for fast5"
    files: "-c {vbz,vbz_legacy_v0,gzip,None}, --compression {vbz,vbz_legacy_v0,gzip,None}"
  }
  output {
    File out_stdout = stdout()
    Directory out_save_path = "${in_save_path}"
    File out_filename_base = "${in_filename_base}"
  }
}