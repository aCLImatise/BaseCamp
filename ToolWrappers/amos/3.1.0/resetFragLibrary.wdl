version 1.0

task ResetFragLibrary {
  input {
    String update_clr_ranges
    String bank_name
    String frag_id_dot_newlib_id
  }
  command <<<
    resetFragLibrary \
      ~{update_clr_ranges} \
      ~{bank_name} \
      ~{frag_id_dot_newlib_id}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    update_clr_ranges: ""
    bank_name: ""
    frag_id_dot_newlib_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}