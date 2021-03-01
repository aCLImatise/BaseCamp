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
    docker: "quay.io/biocontainers/hiline:0.2.1--py38hc9558a2_0"
  }
  parameter_meta {
    restriction_sites: ""
  }
  output {
    File out_stdout = stdout()
  }
}