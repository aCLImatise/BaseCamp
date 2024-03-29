version 1.0

task MetadataPiechartpyGNUVIDReport {
  input {
    Boolean? l
    String metadata_pie_chart_do_tpy
    String var_output
    String st_cc
    String gnu_vid_report
  }
  command <<<
    Metadata_piechart_py GNUVID_report \
      ~{metadata_pie_chart_do_tpy} \
      ~{var_output} \
      ~{st_cc} \
      ~{gnu_vid_report} \
      ~{if (l) then "-l" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gnuvid:2.2--0"
  }
  parameter_meta {
    l: ""
    metadata_pie_chart_do_tpy: ""
    var_output: ""
    st_cc: ""
    gnu_vid_report: ""
  }
  output {
    File out_stdout = stdout()
  }
}