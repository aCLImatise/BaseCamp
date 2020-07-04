version 1.0

task Cols {
  input {
    String tab_view_do_tpy
  }
  command <<<
    cols \
      ~{tab_view_do_tpy}
  >>>
  parameter_meta {
    tab_view_do_tpy: ""
  }
}