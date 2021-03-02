version 1.0

task Sdmodify {
  input {
    Boolean? f
    String data_field
    String? sd_files
  }
  command <<<
    sdmodify \
      ~{data_field} \
      ~{sd_files} \
      ~{if (f) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    f: ""
    data_field: ""
    sd_files: ""
  }
  output {
    File out_stdout = stdout()
  }
}