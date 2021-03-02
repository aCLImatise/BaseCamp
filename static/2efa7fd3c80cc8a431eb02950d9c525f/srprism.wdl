version 1.0

task Srprism {
  input {
    Int? trace_level
    File? log_file
    String cmd
  }
  command <<<
    srprism \
      ~{cmd} \
      ~{if defined(trace_level) then ("--trace-level " +  '"' + trace_level + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    trace_level: "[default: warning]\\nMinimum message level to report to the log stream. Possible\\nvalues are \\\"debug\\\", \\\"info\\\", \\\"warning\\\", \\\"error\\\", \\\"quiet\\\"."
    log_file: "[optional]\\nFile for storing diagnostic messages. Default is standard\\nerror.\\n"
    cmd: ""
  }
  output {
    File out_stdout = stdout()
  }
}