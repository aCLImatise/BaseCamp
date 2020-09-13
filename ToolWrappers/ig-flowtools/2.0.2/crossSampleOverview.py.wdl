version 1.0

task CrossSampleOverviewpy {
  input {
    String? m
    File? file_location_summary
    File? file_location_html
    String? s
    String? var_4
    String cs_overview
  }
  command <<<
    crossSampleOverview_py \
      ~{cs_overview} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(file_location_summary) then ("-i " +  '"' + file_location_summary + '"') else ""} \
      ~{if defined(file_location_html) then ("-o " +  '"' + file_location_html + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(var_4) then ("-I " +  '"' + var_4 + '"') else ""}
  >>>
  parameter_meta {
    m: ""
    file_location_summary: "File location for the summary statistics from"
    file_location_html: "File location for the HTML output file."
    s: ""
    var_4: ""
    cs_overview: ""
  }
  output {
    File out_stdout = stdout()
    File out_file_location_html = "${in_file_location_html}"
  }
}