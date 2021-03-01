version 1.0

task Pfscale {
  input {
    Boolean? impose_limit_line
    Boolean? valuelogarithmic_base_parameters
    Boolean? valueprofile_mode_number
    Boolean? valuedatabase_size_default
    Boolean? valueupper_threshold_probability
    Boolean? valuelower_threshold_probability
    Boolean? lhl_mn_pq
  }
  command <<<
    pfscale \
      ~{if (impose_limit_line) then "-l" else ""} \
      ~{if (valuelogarithmic_base_parameters) then "-L" else ""} \
      ~{if (valueprofile_mode_number) then "-M" else ""} \
      ~{if (valuedatabase_size_default) then "-N" else ""} \
      ~{if (valueupper_threshold_probability) then "-P" else ""} \
      ~{if (valuelower_threshold_probability) then "-Q" else ""} \
      ~{if (lhl_mn_pq) then "-lhLMNPQ" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    impose_limit_line: ": do not impose limit on line length."
    valuelogarithmic_base_parameters: "<value>:\\nlogarithmic base of parameters (default: 10)."
    valueprofile_mode_number: "<value>:\\nprofile mode number to scale."
    valuedatabase_size_default: "<value>:\\ndatabase size (default: 14147368)."
    valueupper_threshold_probability: "<value>:\\nupper threshold of probability range (default: 0.0001)."
    valuelower_threshold_probability: "<value>:\\nlower threshold of probability range (default: 0.000001)."
    lhl_mn_pq: ""
  }
  output {
    File out_stdout = stdout()
  }
}