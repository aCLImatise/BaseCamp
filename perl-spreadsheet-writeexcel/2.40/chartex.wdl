version 1.0

task Chartex {
  input {
    String? man
    Boolean? chart_name
    File file_dot_xls
  }
  command <<<
    chartex \
      ~{file_dot_xls} \
      ~{if defined(man) then ("--man " +  '"' + man + '"') else ""} \
      ~{if (chart_name) then "--chartname" else ""}
  >>>
  parameter_meta {
    man: "Prints the manual page and exits.\\n"
    chart_name: ""
    file_dot_xls: ""
  }
  output {
    File out_stdout = stdout()
  }
}