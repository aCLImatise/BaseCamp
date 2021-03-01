version 1.0

task MobSuitepostlinksh {
  input {
    String d_load
  }
  command <<<
    _mob_suite_post_link_sh \
      ~{d_load}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mob_suite:3.0.1--py_0"
  }
  parameter_meta {
    d_load: "Upload   Total   Spent    Left  Speed"
  }
  output {
    File out_stdout = stdout()
  }
}