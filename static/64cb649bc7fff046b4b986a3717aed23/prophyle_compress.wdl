version 1.0

task ProphyleCompress {
  input {
    Boolean? advanced_configuration_json
    String? str
  }
  command <<<
    prophyle compress \
      ~{str} \
      ~{if (advanced_configuration_json) then "-c" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    advanced_configuration_json: "[STR [STR ...]]  advanced configuration (a JSON dictionary)"
    str: ""
  }
  output {
    File out_stdout = stdout()
  }
}