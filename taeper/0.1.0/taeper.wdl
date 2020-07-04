version 1.0

task Taeper {
  input {
    String? input_dir
    String? index
    String? directory_copy_files
    String? scale
    String? dump_index
    Boolean? no_index
    String? log_level
    Boolean? no_progress_bar
  }
  command <<<
    taeper \
      ~{if defined(input_dir) then ("--input_dir " +  '"' + input_dir + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(directory_copy_files) then ("--output " +  '"' + directory_copy_files + '"') else ""} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{if defined(dump_index) then ("--dump_index " +  '"' + dump_index + '"') else ""} \
      ~{true="--no_index" false="" no_index} \
      ~{if defined(log_level) then ("--log_level " +  '"' + log_level + '"') else ""} \
      ~{true="--no_progress_bar" false="" no_progress_bar}
  >>>
  parameter_meta {
    input_dir: "Directory where files are located."
    index: "Provide a prebuilt index file to skip indexing. Be aware that paths within an index file are relative to the current working directory when they were built."
    directory_copy_files: "Directory to copy the files to. If not specified, will generate the index file only."
    scale: "Amount to scale the timing by. i.e scale of 10 will deposit the reads 10x fatser than they were generated. (Default = 1.0)"
    dump_index: "Path to save index as. Default is 'taeper_index.npy' in current working directory. Note: Paths in the index are relative to the current working directory."
    no_index: "Dont write the index list to file. This will mean it needs regenerating for this dataset on each run."
    log_level: "Level of logging. 0 is none, 5 is for debugging. Default is 4 which will report info, warnings, errors, and critical information."
    no_progress_bar: "Do not display progress bar."
  }
}