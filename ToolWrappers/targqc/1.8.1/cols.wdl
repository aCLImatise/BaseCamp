version 1.0

task Cols {
  input {
    Int? number_read_estimate
    String? use_opposed_tab
    Int? max
    Int? min
    String tab_view_do_tpy
  }
  command <<<
    cols \
      ~{tab_view_do_tpy} \
      ~{if defined(number_read_estimate) then ("-l " +  '"' + number_read_estimate + '"') else ""} \
      ~{if defined(use_opposed_tab) then ("-d " +  '"' + use_opposed_tab + '"') else ""} \
      ~{if defined(max) then ("-max " +  '"' + max + '"') else ""} \
      ~{if defined(min) then ("-min " +  '"' + min + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    number_read_estimate: "The number of lines to read in to estimate the size of a column.\\n[default 100]"
    use_opposed_tab: "Use this (opposed to a tab) for the delimiter"
    max: "The maximum length of a column (default: unlimited)"
    min: "The minimum length of a column (default: 0)"
    tab_view_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}