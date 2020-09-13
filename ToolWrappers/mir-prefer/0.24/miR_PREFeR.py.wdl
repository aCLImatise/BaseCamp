version 1.0

task MiRPREFeRpy {
  input {
    Boolean? log
    Boolean? keep_tmp
    Boolean? output_detail_for_debug
    String var_command
    String config_file
  }
  command <<<
    miR_PREFeR_py \
      ~{var_command} \
      ~{config_file} \
      ~{if (log) then "--log" else ""} \
      ~{if (keep_tmp) then "--keep-tmp" else ""} \
      ~{if (output_detail_for_debug) then "--output-detail-for-debug" else ""}
  >>>
  parameter_meta {
    log: "Generate a log file."
    keep_tmp: "After finish the whole pipeline, do not remove the\\ntemporary folder that contains the intermidate files."
    output_detail_for_debug: ""
    var_command: ""
    config_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}