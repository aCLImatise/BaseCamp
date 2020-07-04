version 1.0

task HiLineParamsREFERENCE {
  input {
    String restriction_sites
  }
  command <<<
    HiLine params REFERENCE \
      ~{restriction_sites}
  >>>
  parameter_meta {
    restriction_sites: ""
  }
}