version 1.0

task Fast5Subset {
  input {
    String? path_fast_file
    String? save_path
    String? read_id_list
    File? filename_base
    String? batch_size
    String? threads
    Boolean? recursive
    Boolean? ignore_symlinks
    String? compression
    File? file_list
    String tool
    String for
    String extracting
    String reads
    String from
    String a
    String multi_read_fast_five_file
    String by
    String read_id
  }
  command <<<
    fast5_subset \
      ~{tool} \
      ~{for} \
      ~{extracting} \
      ~{reads} \
      ~{from} \
      ~{a} \
      ~{multi_read_fast_five_file} \
      ~{by} \
      ~{read_id} \
      ~{if defined(path_fast_file) then ("--input " +  '"' + path_fast_file + '"') else ""} \
      ~{if defined(save_path) then ("--save_path " +  '"' + save_path + '"') else ""} \
      ~{if defined(read_id_list) then ("--read_id_list " +  '"' + read_id_list + '"') else ""} \
      ~{if defined(filename_base) then ("--filename_base " +  '"' + filename_base + '"') else ""} \
      ~{if defined(batch_size) then ("--batch_size " +  '"' + batch_size + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--recursive" false="" recursive} \
      ~{true="--ignore_symlinks" false="" ignore_symlinks} \
      ~{if defined(compression) then ("--compression " +  '"' + compression + '"') else ""} \
      ~{if defined(file_list) then ("--file_list " +  '"' + file_list + '"') else ""}
  >>>
  parameter_meta {
    path_fast_file: "Path to Fast5 file or directory of Fast5 files"
    save_path: "Folder to output MultiRead subset to"
    read_id_list: "File containing list of read ids to extract (or sequencing_summary.txt file)"
    filename_base: "Root of output filename, default='batch' -> 'batch_0.fast5'"
    batch_size: "Number of reads per multi-read file"
    threads: "Maximum number of threads to use"
    recursive: "Search recursively through folders for MultiRead fast5 files"
    ignore_symlinks: "Ignore symlinks when searching recursively for fast5 files"
    compression: "Target output compression type"
    file_list: "File containing names of files to search in"
    tool: ""
    for: ""
    extracting: ""
    reads: ""
    from: ""
    a: ""
    multi_read_fast_five_file: ""
    by: ""
    read_id: ""
  }
}