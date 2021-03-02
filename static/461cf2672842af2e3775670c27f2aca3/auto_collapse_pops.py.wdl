version 1.0

task AutoCollapsePopspy {
  input {
    File? flock_output_file
    File? name_output_file
    File? name_report_file
    File? file_location_profiletxt
    String auto_pop_collapse_from_profile
  }
  command <<<
    auto_collapse_pops_py \
      ~{auto_pop_collapse_from_profile} \
      ~{if defined(flock_output_file) then ("-i " +  '"' + flock_output_file + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(name_report_file) then ("-r " +  '"' + name_report_file + '"') else ""} \
      ~{if defined(file_location_profiletxt) then ("-p " +  '"' + file_location_profiletxt + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    flock_output_file: "FLOCK output file"
    name_output_file: "Name of the output file."
    name_report_file: "Name of the report file."
    file_location_profiletxt: "File location for the profile.txt from FLOCK."
    auto_pop_collapse_from_profile: ""
  }
  output {
    File out_stdout = stdout()
    File out_flock_output_file = "${in_flock_output_file}"
    File out_name_output_file = "${in_name_output_file}"
  }
}