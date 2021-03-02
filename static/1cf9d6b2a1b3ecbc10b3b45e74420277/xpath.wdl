version 1.0

task Xpath {
  input {
    File? only_output_path
    String? use_suffix_linefeed
    String? use_prefix_nothing
    String? t_use_dtd
  }
  command <<<
    xpath \
      ~{if defined(only_output_path) then ("-q " +  '"' + only_output_path + '"') else ""} \
      ~{if defined(use_suffix_linefeed) then ("-s " +  '"' + use_suffix_linefeed + '"') else ""} \
      ~{if defined(use_prefix_nothing) then ("-p " +  '"' + use_prefix_nothing + '"') else ""} \
      ~{if defined(t_use_dtd) then ("-n " +  '"' + t_use_dtd + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    only_output_path: ", only output the resulting PATH."
    use_suffix_linefeed: ", use suffix instead of linefeed."
    use_prefix_nothing: ", use prefix instead of nothing."
    t_use_dtd: "'t use an external DTD."
  }
  output {
    File out_stdout = stdout()
    File out_only_output_path = "${in_only_output_path}"
  }
}