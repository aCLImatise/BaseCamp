version 1.0

task MiRPREFeRpy {
  input {
    Boolean? log
    Boolean? keep_tmp
    String var_command
    String config_file
  }
  command <<<
    miR_PREFeR_py \
      ~{var_command} \
      ~{config_file} \
      ~{if (log) then "--log" else ""} \
      ~{if (keep_tmp) then "--keep-tmp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    log: "Generate a log file."
    keep_tmp: "After finish the whole pipeline, do not remove the\\ntemporary folder that contains the intermidate files."
    var_command: ""
    config_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}