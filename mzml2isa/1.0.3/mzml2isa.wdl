version 1.0

task Mzml2isa {
  input {
    String? input_folder_archive
    String? folder_new_files
    String? study_identifier_mtblsxxx
    String? additional_user_provided
    String? launch_different_processes
    Boolean? not_split_files
    Boolean? not_group_samples
    String? warning_control_python
    String? directory_containing_files
    Boolean? show_more_default
  }
  command <<<
    mzml2isa \
      ~{if defined(input_folder_archive) then ("-i " +  '"' + input_folder_archive + '"') else ""} \
      ~{if defined(folder_new_files) then ("-o " +  '"' + folder_new_files + '"') else ""} \
      ~{if defined(study_identifier_mtblsxxx) then ("-s " +  '"' + study_identifier_mtblsxxx + '"') else ""} \
      ~{if defined(additional_user_provided) then ("-m " +  '"' + additional_user_provided + '"') else ""} \
      ~{if defined(launch_different_processes) then ("-j " +  '"' + launch_different_processes + '"') else ""} \
      ~{true="-n" false="" not_split_files} \
      ~{true="-c" false="" not_group_samples} \
      ~{if defined(warning_control_python) then ("-W " +  '"' + warning_control_python + '"') else ""} \
      ~{if defined(directory_containing_files) then ("-t " +  '"' + directory_containing_files + '"') else ""} \
      ~{true="-v" false="" show_more_default}
  >>>
  parameter_meta {
    input_folder_archive: "input folder or archive containing mzML files"
    folder_new_files: "out folder (new files will be created here)"
    study_identifier_mtblsxxx: "study identifier (e.g. MTBLSxxx)"
    additional_user_provided: "additional user provided metadata (JSON format)"
    launch_different_processes: "launch different processes for parsing"
    not_split_files: "do NOT split assay files based on polarity"
    not_group_samples: "do NOT group centroid & profile samples"
    warning_control_python: "warning control (with python default behaviour)"
    directory_containing_files: "directory containing default template files"
    show_more_default: "show more output (default if tqdm is not installed)"
  }
}