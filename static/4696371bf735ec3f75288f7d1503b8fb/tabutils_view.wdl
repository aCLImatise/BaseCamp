version 1.0

task TabutilsView {
  input {
    String tab_view_do_tpy
  }
  command <<<
    tabutils view \
      ~{tab_view_do_tpy}
  >>>
  parameter_meta {
    tab_view_do_tpy: ""
  }
}