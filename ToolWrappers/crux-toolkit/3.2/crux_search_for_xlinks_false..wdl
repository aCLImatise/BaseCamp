version 1.0

task CruxSearchforxlinksFalse {
  input {
    String crux
    String search_for_x_links
    File ms_two_file
  }
  command <<<
    crux search_for_xlinks false_ \
      ~{crux} \
      ~{search_for_x_links} \
      ~{ms_two_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    crux: ""
    search_for_x_links: ""
    ms_two_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}