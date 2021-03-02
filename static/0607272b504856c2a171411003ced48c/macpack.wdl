version 1.0

task Macpack {
  input {
    String? appname
    Directory? output_output_directory
    String? assembly_to_pack
    File? icon
    Int? resource_additional_files
    Boolean? _mode_application
  }
  command <<<
    macpack \
      ~{if defined(appname) then ("-appname " +  '"' + appname + '"') else ""} \
      ~{if defined(output_output_directory) then ("-output " +  '"' + output_output_directory + '"') else ""} \
      ~{if defined(assembly_to_pack) then ("-a " +  '"' + assembly_to_pack + '"') else ""} \
      ~{if defined(icon) then ("-icon " +  '"' + icon + '"') else ""} \
      ~{if defined(resource_additional_files) then ("-r " +  '"' + resource_additional_files + '"') else ""} \
      ~{if (_mode_application) then "-m" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    appname: ":appname    Application Name"
    output_output_directory: ":OUTPUT      Output directory"
    assembly_to_pack: "Assembly to pack"
    icon: "Icon filename"
    resource_additional_files: ",resource2          Additional files to bundle"
    _mode_application: "[winforms|cocoa|x11|console] The mode for the application"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_output_directory = "${in_output_output_directory}"
  }
}