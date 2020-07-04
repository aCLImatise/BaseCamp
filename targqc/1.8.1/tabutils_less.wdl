version 1.0

task TabutilsLess {
  input {
    String tab_view_do_tpy
  }
  command <<<
    tabutils less \
      ~{tab_view_do_tpy}
  >>>
  parameter_meta {
    tab_view_do_tpy: ""
  }
}