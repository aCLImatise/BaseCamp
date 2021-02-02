version 1.0

task Macpack {
  input {
    String? appname
    Directory? outputoutput_output_directory
    String? assembly_to_pack
    File? icon_file_icon
    Int? resource_additional_files
    Boolean? _mode_application
  }
  command <<<
    macpack \
      ~{if defined(appname) then ("-appname " +  '"' + appname + '"') else ""} \
      ~{if defined(outputoutput_output_directory) then ("-o " +  '"' + outputoutput_output_directory + '"') else ""} \
      ~{if defined(assembly_to_pack) then ("-a " +  '"' + assembly_to_pack + '"') else ""} \
      ~{if defined(icon_file_icon) then ("-i " +  '"' + icon_file_icon + '"') else ""} \
      ~{if defined(resource_additional_files) then ("-r " +  '"' + resource_additional_files + '"') else ""} \
      ~{if (_mode_application) then "-m" else ""}
  >>>
  parameter_meta {
    appname: ":appname    Application Name"
    outputoutput_output_directory: "-output:OUTPUT      Output directory"
    assembly_to_pack: "Assembly to pack"
    icon_file_icon: "-icon file          Icon filename"
    resource_additional_files: ",resource2          Additional files to bundle"
    _mode_application: "[winforms|cocoa|x11|console] The mode for the application"
  }
  output {
    File out_stdout = stdout()
    Directory out_outputoutput_output_directory = "${in_outputoutput_output_directory}"
  }
}