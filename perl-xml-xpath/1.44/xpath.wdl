version 1.0

task Xpath {
  input {
    File? only_output_path
    String? use_suffix_linefeed
    String? use_prefix_nothing
    String? use_external_dtd
  }
  command <<<
    xpath \
      ~{if defined(only_output_path) then ("-q " +  '"' + only_output_path + '"') else ""} \
      ~{if defined(use_suffix_linefeed) then ("-s " +  '"' + use_suffix_linefeed + '"') else ""} \
      ~{if defined(use_prefix_nothing) then ("-p " +  '"' + use_prefix_nothing + '"') else ""} \
      ~{if defined(use_external_dtd) then ("-n " +  '"' + use_external_dtd + '"') else ""}
  >>>
  parameter_meta {
    only_output_path: ", only output the resulting PATH."
    use_suffix_linefeed: ", use suffix instead of linefeed."
    use_prefix_nothing: ", use prefix instead of nothing."
    use_external_dtd: "'t use an external DTD."
  }
  output {
    File out_stdout = stdout()
    File out_only_output_path = "${in_only_output_path}"
  }
}