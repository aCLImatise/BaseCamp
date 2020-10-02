version 1.0

task CrossSampleOverviewpy {
  input {
    File? file_location_summary
    File? file_location_html
    File? file_location_mfi
    Directory? directory_location_html
    Directory? location_sharetemplates_directory
    String? s
    String? var_6
    String cs_overview
  }
  command <<<
    crossSampleOverview_py \
      ~{cs_overview} \
      ~{if defined(file_location_summary) then ("-i " +  '"' + file_location_summary + '"') else ""} \
      ~{if defined(file_location_html) then ("-o " +  '"' + file_location_html + '"') else ""} \
      ~{if defined(file_location_mfi) then ("-m " +  '"' + file_location_mfi + '"') else ""} \
      ~{if defined(directory_location_html) then ("-d " +  '"' + directory_location_html + '"') else ""} \
      ~{if defined(location_sharetemplates_directory) then ("-t " +  '"' + location_sharetemplates_directory + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(var_6) then ("-I " +  '"' + var_6 + '"') else ""}
  >>>
  parameter_meta {
    file_location_summary: "File location for the summary statistics from"
    file_location_html: "File location for the HTML output file."
    file_location_mfi: "File location for the MFI from FLOCK."
    directory_location_html: "Directory location for the html supporting files."
    location_sharetemplates_directory: "Location of the /share/templates Directory."
    s: ""
    var_6: ""
    cs_overview: ""
  }
  output {
    File out_stdout = stdout()
    File out_file_location_html = "${in_file_location_html}"
    Directory out_directory_location_html = "${in_directory_location_html}"
  }
}