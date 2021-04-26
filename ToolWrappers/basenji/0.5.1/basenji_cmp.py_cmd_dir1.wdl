version 1.0

task BasenjiCmppyCmdDir1 {
  input {
    String basenji_cmp_do_tpy
  }
  command <<<
    basenji_cmp_py cmd_dir1 \
      ~{basenji_cmp_do_tpy}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0"
  }
  parameter_meta {
    basenji_cmp_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}