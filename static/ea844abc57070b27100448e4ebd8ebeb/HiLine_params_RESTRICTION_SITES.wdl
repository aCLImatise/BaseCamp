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
  parameter_meta {
    hi_line: ""
    params: ""
    reference: ""
    restriction_sites: ""
  }
}