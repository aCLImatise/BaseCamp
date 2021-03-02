version 1.0

task RaToTab {
  input {
    String? cols
    Boolean? head
    String in_do_tra
  }
  command <<<
    raToTab \
      ~{in_do_tra} \
      ~{if defined(cols) then ("-cols " +  '"' + cols + '"') else ""} \
      ~{if (head) then "-head" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cols: ",b,c - List columns in order to output in table\\nOnly these columns will be output.  If you\\nDon't give this option, all columns are output\\nin alphabetical order"
    head: "- Put column names in header"
    in_do_tra: ""
  }
  output {
    File out_stdout = stdout()
  }
}