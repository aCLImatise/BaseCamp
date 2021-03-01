version 1.0

task HiLineParamsREFERENCE {
  input {
    String restriction_sites
  }
  command <<<
    HiLine params REFERENCE \
      ~{restriction_sites}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    restriction_sites: ""
  }
  output {
    File out_stdout = stdout()
  }
}