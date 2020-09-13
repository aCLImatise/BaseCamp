version 1.0

task CruxSearchforxlinksMass {
  input {
    String crux
    String search_for_x_links
    File ms_two_file
  }
  command <<<
    crux search_for_xlinks mass_ \
      ~{crux} \
      ~{search_for_x_links} \
      ~{ms_two_file}
  >>>
  parameter_meta {
    crux: ""
    search_for_x_links: ""
    ms_two_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}