version 1.0

task Nmrml2isa {
  input {
    String? input_folder_archive
    String? folder_directory_created
    String? study_identifier_mtblsxxx
    String? additional_user_provided
    String? launch_different_processes
    String? warning_control_python
    String? directory_containing_files
    Boolean? show_more_default
    Boolean? do_show_output
  }
  command <<<
    nmrml2isa \
      ~{if defined(input_folder_archive) then ("-i " +  '"' + input_folder_archive + '"') else ""} \
      ~{if defined(folder_directory_created) then ("-o " +  '"' + folder_directory_created + '"') else ""} \
      ~{if defined(study_identifier_mtblsxxx) then ("-s " +  '"' + study_identifier_mtblsxxx + '"') else ""} \
      ~{if defined(additional_user_provided) then ("-m " +  '"' + additional_user_provided + '"') else ""} \
      ~{if defined(launch_different_processes) then ("-j " +  '"' + launch_different_processes + '"') else ""} \
      ~{if defined(warning_control_python) then ("-W " +  '"' + warning_control_python + '"') else ""} \
      ~{if defined(directory_containing_files) then ("-t " +  '"' + directory_containing_files + '"') else ""} \
      ~{true="-v" false="" show_more_default} \
      ~{true="-q" false="" do_show_output}
  >>>
  parameter_meta {
    input_folder_archive: "input folder or archive containing nmrML files"
    folder_directory_created: "out folder (a new directory will be created here)"
    study_identifier_mtblsxxx: "study identifier (e.g. MTBLSxxx)"
    additional_user_provided: "additional user provided metadata (JSON or XLSX format)"
    launch_different_processes: "launch different processes for parsing"
    warning_control_python: "warning control (with python default behaviour)"
    directory_containing_files: "directory containing default template files"
    show_more_default: "show more output (default if progressbar2 is not installed)"
    do_show_output: "do not show any output"
  }
}