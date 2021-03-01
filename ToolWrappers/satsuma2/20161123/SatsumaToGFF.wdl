version 1.0

task SatsumaToGFF {
  input {
    Boolean? string_satsuma_file
  }
  command <<<
    SatsumaToGFF \
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