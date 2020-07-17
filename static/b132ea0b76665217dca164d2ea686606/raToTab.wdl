version 1.0

task RaToTab {
  input {
    String? cols
    Boolean? head
    String in_do_tra
    String out_dot_tab
  }
  command <<<
    raToTab \
      ~{in_do_tra} \
      ~{out_dot_tab} \
      ~{if defined(cols) then ("-cols " +  '"' + cols + '"') else ""} \
      ~{true="-head" false="" head}
  >>>
  parameter_meta {
    cols: ",b,c - List columns in order to output in table Only these columns will be output.  If you Don't give this option, all columns are output in alphabetical order"
    head: "- Put column names in header"
    in_do_tra: ""
    out_dot_tab: ""
  }
}