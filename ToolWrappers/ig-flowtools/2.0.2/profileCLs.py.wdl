version 1.0

task ProfileCLspy {
  input {
    File? file_location_profiletxt
    File? name_output_html
    File? path_supporting_directory
    File? path_sharetemplates_directory
    String tool_dir
  }
  command <<<
    profileCLs_py \
      ~{tool_dir} \
      ~{if defined(file_location_profiletxt) then ("-i " +  '"' + file_location_profiletxt + '"') else ""} \
      ~{if defined(name_output_html) then ("-o " +  '"' + name_output_html + '"') else ""} \
      ~{if defined(path_supporting_directory) then ("-d " +  '"' + path_supporting_directory + '"') else ""} \
      ~{if defined(path_sharetemplates_directory) then ("-t " +  '"' + path_sharetemplates_directory + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_location_profiletxt: "File location for the profile.txt from FLOCK."
    name_output_html: "Name of the output html file."
    path_supporting_directory: "Path to html supporting directory."
    path_sharetemplates_directory: "Path to the /share/templates directory"
    tool_dir: "runs flowCL on a each population defined by FLOCK."
  }
  output {
    File out_stdout = stdout()
    File out_name_output_html = "${in_name_output_html}"
  }
}