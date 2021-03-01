version 1.0

task MultiToSingleFast5 {
  input {
    File? input_path
    Directory? save_path
    Boolean? recursive
    Boolean? ignore_symlinks
  }
  command <<<
    multi_to_single_fast5 \
      ~{if defined(input_path) then ("--input_path " +  '"' + input_path + '"') else ""} \
      ~{if defined(save_path) then ("--save_path " +  '"' + save_path + '"') else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if (ignore_symlinks) then "--ignore_symlinks" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ont-fast5-api:3.3.0--py_0"
  }
  parameter_meta {
    input_path: "MultiRead fast5 file or path to directory of MultiRead\\nfiles"
    save_path: "Folder to output SingleRead fast5 files to"
    recursive: "Search recursively through folders for MultiRead fast5"
    ignore_symlinks: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_save_path = "${in_save_path}"
  }
}