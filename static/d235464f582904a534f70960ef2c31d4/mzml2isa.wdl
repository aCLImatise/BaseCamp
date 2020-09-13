version 1.0

task Mzml2isa {
  input {
    File? input_folder_archive
    File? folder_new_files
    String? study_identifier_eg
    String? additional_user_provided
    String? launch_different_processes
    Boolean? not_split_files
    Boolean? not_group_centroid
    String? warning_control_python
    Directory? directory_containing_files
    Boolean? show_more_default
  }
  command <<<
    mzml2isa \
      ~{if defined(input_folder_archive) then ("-i " +  '"' + input_folder_archive + '"') else ""} \
      ~{if defined(folder_new_files) then ("-o " +  '"' + folder_new_files + '"') else ""} \
      ~{if defined(study_identifier_eg) then ("-s " +  '"' + study_identifier_eg + '"') else ""} \
      ~{if defined(additional_user_provided) then ("-m " +  '"' + additional_user_provided + '"') else ""} \
      ~{if defined(launch_different_processes) then ("-j " +  '"' + launch_different_processes + '"') else ""} \
      ~{if (not_split_files) then "-n" else ""} \
      ~{if (not_group_centroid) then "-c" else ""} \
      ~{if defined(warning_control_python) then ("-W " +  '"' + warning_control_python + '"') else ""} \
      ~{if defined(directory_containing_files) then ("-t " +  '"' + directory_containing_files + '"') else ""} \
      ~{if (show_more_default) then "-v" else ""}
  >>>
  parameter_meta {
    input_folder_archive: "input folder or archive containing mzML files"
    folder_new_files: "out folder (new files will be created here)"
    study_identifier_eg: "study identifier (e.g. MTBLSxxx)"
    additional_user_provided: "additional user provided metadata (JSON format)"
    launch_different_processes: "launch different processes for parsing"
    not_split_files: "do NOT split assay files based on polarity"
    not_group_centroid: "do NOT group centroid & profile samples"
    warning_control_python: "warning control (with python default behaviour)"
    directory_containing_files: "directory containing default template files"
    show_more_default: "show more output (default if tqdm is not installed)"
  }
  output {
    File out_stdout = stdout()
    File out_folder_new_files = "${in_folder_new_files}"
  }
}