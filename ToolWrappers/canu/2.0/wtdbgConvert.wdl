version 1.0

task WtdbgConvert {
  input {
    String? output_prefix
    File file_dot_dbg_dot_lay
  }
  command <<<
    wtdbgConvert \
      ~{file_dot_dbg_dot_lay} \
      ~{if defined(output_prefix) then ("-o " +  '"' + output_prefix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_prefix: "output prefix"
    file_dot_dbg_dot_lay: ""
  }
  output {
    File out_stdout = stdout()
  }
}