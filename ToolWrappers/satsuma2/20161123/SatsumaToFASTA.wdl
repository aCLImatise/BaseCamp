version 1.0

task SatsumaToFASTA {
  input {
    Boolean? string_satsuma_file
  }
  command <<<
    SatsumaToFASTA \
      ~{if (string_satsuma_file) then "-i" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    string_satsuma_file: "<string> : satsuma file"
  }
  output {
    File out_stdout = stdout()
  }
}