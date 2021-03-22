version 1.0

task HiLineParamsRESTRICTIONSITES {
  input {
    String hi_line
    String params
    String reference
    String restriction_sites
  }
  command <<<
    HiLine params RESTRICTION_SITES \
      ~{hi_line} \
      ~{params} \
      ~{reference} \
      ~{restriction_sites}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hiline:0.2.2--py38hc9558a2_1"
  }
  parameter_meta {
    hi_line: ""
    params: ""
    reference: ""
    restriction_sites: ""
  }
  output {
    File out_stdout = stdout()
  }
}