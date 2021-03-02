version 1.0

task Nmrml2isa {
  input {
    File? input_folder_archive
    File? folder_new_directory
    String? study_identifier_mtblsxxx
    String? additional_user_provided
    String? launch_different_processes
    String? warning_control_python
    Directory? directory_containing_files
    Boolean? show_more_default
    Boolean? do_show_output
  }
  command <<<
    nmrml2isa \
      ~{if defined(input_folder_archive) then ("-i " +  '"' + input_folder_archive + '"') else ""} \
      ~{if defined(folder_new_directory) then ("-o " +  '"' + folder_new_directory + '"') else ""} \
      ~{if defined(study_identifier_mtblsxxx) then ("-s " +  '"' + study_identifier_mtblsxxx + '"') else ""} \
      ~{if defined(additional_user_provided) then ("-m " +  '"' + additional_user_provided + '"') else ""} \
      ~{if defined(launch_different_processes) then ("-j " +  '"' + launch_different_processes + '"') else ""} \
      ~{if defined(warning_control_python) then ("-W " +  '"' + warning_control_python + '"') else ""} \
      ~{if defined(directory_containing_files) then ("-t " +  '"' + directory_containing_files + '"') else ""} \
      ~{if (show_more_default) then "-v" else ""} \
      ~{if (do_show_output) then "-q" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_folder_archive: "input folder or archive containing nmrML files"
    folder_new_directory: "out folder (a new directory will be created here)"
    study_identifier_mtblsxxx: "study identifier (e.g. MTBLSxxx)"
    additional_user_provided: "additional user provided metadata (JSON or XLSX\\nformat)"
    launch_different_processes: "launch different processes for parsing"
    warning_control_python: "warning control (with python default behaviour)"
    directory_containing_files: "directory containing default template files"
    show_more_default: "show more output (default if progressbar2 is not\\ninstalled)"
    do_show_output: "do not show any output"
  }
  output {
    File out_stdout = stdout()
    File out_folder_new_directory = "${in_folder_new_directory}"
  }
}