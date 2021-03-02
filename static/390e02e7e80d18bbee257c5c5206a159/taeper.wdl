version 1.0

task Taeper {
  input {
    Directory? input_dir
    File? index
    File? directory_copy_files
    Float? scale
    File? dump_index
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
      ~{if (no_index) then "--no_index" else ""} \
      ~{if defined(log_level) then ("--log_level " +  '"' + log_level + '"') else ""} \
      ~{if (no_progress_bar) then "--no_progress_bar" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_dir: "Directory where files are located."
    index: "Provide a prebuilt index file to skip indexing. Be\\naware that paths within an index file are relative to\\nthe current working directory when they were built."
    directory_copy_files: "Directory to copy the files to. If not specified, will\\ngenerate the index file only."
    scale: "Amount to scale the timing by. i.e scale of 10 will\\ndeposit the reads 10x fatser than they were generated.\\n(Default = 1.0)"
    dump_index: "Path to save index as. Default is 'taeper_index.npy'\\nin current working directory. Note: Paths in the index\\nare relative to the current working directory."
    no_index: "Dont write the index list to file. This will mean it\\nneeds regenerating for this dataset on each run."
    log_level: "Level of logging. 0 is none, 5 is for debugging.\\nDefault is 4 which will report info, warnings, errors,\\nand critical information."
    no_progress_bar: "Do not display progress bar."
  }
  output {
    File out_stdout = stdout()
  }
}