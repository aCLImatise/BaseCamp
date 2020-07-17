version 1.0

task Tsv {
  input {
    String tab_view_do_tpy
  }
  command <<<
    tsv \
      ~{tab_view_do_tpy}
  >>>
  parameter_meta {
    tab_view_do_tpy: ""
  }
}