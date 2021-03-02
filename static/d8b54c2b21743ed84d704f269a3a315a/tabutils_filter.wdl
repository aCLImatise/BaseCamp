version 1.0

task TabutilsFilter {
  input {
    File? header
    String tab_filter_do_tpy
  }
  command <<<
    tabutils filter \
      ~{tab_filter_do_tpy} \
      ~{if defined(header) then ("-header " +  '"' + header + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    header: ""
    tab_filter_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}