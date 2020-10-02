version 1.0

task StarfishValidateManifest {
  input {
    Boolean? fuzz
    String json_file_or_url
  }
  command <<<
    starfish validate manifest \
      ~{json_file_or_url} \
      ~{if (fuzz) then "--fuzz" else ""}
  >>>
  parameter_meta {
    fuzz: "--help  Show this message and exit.\\n"
    json_file_or_url: ""
  }
  output {
    File out_stdout = stdout()
  }
}