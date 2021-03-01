version 1.0

task ReverseSatsumaOut {
  input {
    Boolean? string_satsuma_file
  }
  command <<<
    ReverseSatsumaOut \
      ~{if (string_satsuma_file) then "-i" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    string_satsuma_file: "<string> : input satsuma file"
  }
  output {
    File out_stdout = stdout()
  }
}