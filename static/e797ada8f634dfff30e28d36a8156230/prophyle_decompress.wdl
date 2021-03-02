version 1.0

task ProphyleDecompress {
  input {
    Boolean? skip_klcp_construction
    Boolean? advanced_configuration_json
    String? str
  }
  command <<<
    prophyle decompress \
      ~{str} \
      ~{if (skip_klcp_construction) then "-K" else ""} \
      ~{if (advanced_configuration_json) then "-c" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    skip_klcp_construction: "skip k-LCP construction"
    advanced_configuration_json: "[STR [STR ...]]  advanced configuration (a JSON dictionary)"
    str: ""
  }
  output {
    File out_stdout = stdout()
  }
}